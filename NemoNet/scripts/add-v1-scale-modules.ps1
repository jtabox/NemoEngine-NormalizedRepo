Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$utf8NoBom = [System.Text.UTF8Encoding]::new($false)
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$jsonPath = Join-Path $repoRoot 'NemoNet\Nemo Net 2.0.json'

function Normalize-GeneratedText {
    param([string]$Text)

    $normalized = $Text -replace "`r`n", "`n" -replace "`r", "`n"
    $lines = $normalized -split "`n", -1 | ForEach-Object {
        $_ -replace '[ \t]+$', ''
    }

    ($lines -join "`n").TrimEnd("`r", "`n")
}

function Write-GeneratedText {
    param(
        [string]$Path,
        [string]$Text
    )

    [System.IO.File]::WriteAllText($Path, (Normalize-GeneratedText -Text $Text), $utf8NoBom)
}

$data = Get-Content -Raw -Encoding UTF8 -LiteralPath $jsonPath | ConvertFrom-Json
$prompts = New-Object System.Collections.ArrayList
foreach ($prompt in @($data.prompts)) {
    [void]$prompts.Add($prompt)
}

function New-PromptObject {
    param(
        [string]$Id,
        [string]$Name,
        [string]$Content,
        [bool]$Enabled = $false,
        [string]$Role = 'system',
        [int]$InjectionPosition = 0,
        [int]$InjectionDepth = 4,
        [bool]$SystemPrompt = $false,
        [bool]$Marker = $false
    )

    [pscustomobject][ordered]@{
        identifier         = $Id
        name               = $Name
        system_prompt      = $SystemPrompt
        marker             = $Marker
        role               = $Role
        content            = $Content
        enabled            = $Enabled
        injection_position = $InjectionPosition
        injection_depth    = $InjectionDepth
        injection_order    = 100
        injection_trigger  = @()
        forbid_overrides   = $false
    }
}

function Get-Prompt {
    param([string]$Id)

    $matches = @($prompts | Where-Object { $_.identifier -eq $Id })
    if ($matches.Count -ne 1) {
        throw "Expected exactly one prompt with identifier '$Id', found $($matches.Count)."
    }
    $matches[0]
}

function New-SectionContent {
    param(
        [string]$Category,
        [string]$Tooltip,
        [string]$Color,
        [string]$Badge
    )

@"
{{// @category $Category }}
{{// @section-header true }}
{{// @tooltip $Tooltip }}
{{// @color $Color }}
{{// @badge $Badge }}
{{trim}}
"@
}

function New-ModuleContent {
    param(
        [string]$Category,
        [string]$Tooltip,
        [string]$Color,
        [string]$Badge,
        [string]$Var,
        [string]$NameVar,
        [string]$Label,
        [string]$Body
    )

@"
{{// @category $Category }}
{{// @tooltip $Tooltip }}
{{// @color $Color }}
{{// @badge $Badge }}

{{setvar::$NameVar::$Label}}
{{setvar::$Var::$Body}}

{{trim}}
"@
}

function New-TrackerContent {
    param(
        [string]$Category,
        [string]$Tooltip,
        [string]$Color,
        [string]$Badge,
        [string]$TrackerVar
    )

@"
{{// @category $Category }}
{{// @tooltip $Tooltip }}
{{// @color $Color }}
{{// @badge $Badge }}

{{setvar::$TrackerVar::Active}}

{{trim}}
"@
}

function Ensure-NameSetvar {
    param(
        [string]$Id,
        [string]$NameVar,
        [string]$Label,
        [string]$BeforeVar
    )

    $prompt = Get-Prompt $Id
    $needle = "{{setvar::$NameVar::"
    if ($prompt.content.Contains($needle)) {
        return
    }

    $before = "{{setvar::$BeforeVar::"
    $index = $prompt.content.IndexOf($before, [StringComparison]::Ordinal)
    if ($index -lt 0) {
        throw "Could not find '$before' in prompt '$Id'."
    }

    $insert = "{{setvar::$NameVar::$Label}}`r`n"
    $prompt.content = $prompt.content.Insert($index, $insert)
}

function Insert-AfterOnce {
    param(
        [string]$Content,
        [string]$Anchor,
        [string]$Insert,
        [string]$Sentinel
    )

    if ($Content.Contains($Sentinel)) {
        return $Content
    }

    $index = $Content.IndexOf($Anchor, [StringComparison]::Ordinal)
    if ($index -lt 0) {
        throw "Anchor not found: $Anchor"
    }

    $insertAt = $index + $Anchor.Length
    $Content.Insert($insertAt, "`r`n$Insert")
}

function New-GetBlock {
    param([string[]]$Vars)

    ($Vars | ForEach-Object { "{{getvar::$_}}" }) -join "`r`n"
}

function Remove-MarkedBlock {
    param(
        [string]$Content,
        [string]$StartMarker,
        [string]$EndMarker
    )

    $start = $Content.IndexOf($StartMarker, [StringComparison]::Ordinal)
    if ($start -lt 0) {
        return $Content
    }

    $end = $Content.IndexOf($EndMarker, $start, [StringComparison]::Ordinal)
    if ($end -lt 0) {
        throw "Found start marker without end marker: $StartMarker"
    }

    $end += $EndMarker.Length
    $Content.Remove($start, $end - $start).TrimEnd() + "`r`n"
}

function New-SettingsJson {
    param([System.Collections.Specialized.OrderedDictionary]$Sections)

    $lines = New-Object System.Collections.Generic.List[string]
    $lines.Add('<current_settings>')
    $lines.Add('{')
    $sectionNames = @($Sections.Keys)
    for ($s = 0; $s -lt $sectionNames.Count; $s++) {
        $sectionName = $sectionNames[$s]
        $lines.Add("  `"$sectionName`": {")
        $pairs = @($Sections[$sectionName])
        for ($i = 0; $i -lt $pairs.Count; $i++) {
            $pair = $pairs[$i]
            $comma = if ($i -lt ($pairs.Count - 1)) { ',' } else { '' }
            $lines.Add("    `"$($pair[0])`": `"{{getvar::$($pair[1])}}`"$comma")
        }
        $sectionComma = if ($s -lt ($sectionNames.Count - 1)) { ',' } else { '' }
        $lines.Add("  }$sectionComma")
    }
    $lines.Add('}')
    $lines.Add('</current_settings>')
    $lines -join "`r`n"
}

function Replace-CurrentSettings {
    param(
        [string]$Content,
        [string]$Replacement
    )

    $startTag = '<current_settings>'
    $endTag = '</current_settings>'
    $start = $Content.IndexOf($startTag, [StringComparison]::Ordinal)
    if ($start -lt 0) {
        throw 'Settings Reminder is missing <current_settings>.'
    }
    $end = $Content.IndexOf($endTag, $start, [StringComparison]::Ordinal)
    if ($end -lt 0) {
        throw 'Settings Reminder is missing </current_settings>.'
    }
    $end += $endTag.Length

    $Content.Substring(0, $start) + $Replacement + $Content.Substring($end)
}

$scalePrompts = New-Object System.Collections.ArrayList
function Add-ScalePrompt {
    param([pscustomobject]$Prompt)

    [void]$scalePrompts.Add($Prompt)
}

function Add-Section {
    param(
        [string]$Id,
        [string]$Name,
        [string]$Category,
        [string]$Tooltip,
        [string]$Color,
        [string]$Badge
    )

    Add-ScalePrompt (New-PromptObject `
        -Id $Id `
        -Name $Name `
        -Content (New-SectionContent -Category $Category -Tooltip $Tooltip -Color $Color -Badge $Badge) `
        -Enabled $true)
}

function Add-Module {
    param(
        [string]$Id,
        [string]$Name,
        [string]$Category,
        [string]$Tooltip,
        [string]$Color,
        [string]$Badge,
        [string]$Var,
        [string]$NameVar,
        [string]$Label,
        [string]$Body
    )

    Add-ScalePrompt (New-PromptObject `
        -Id $Id `
        -Name $Name `
        -Content (New-ModuleContent -Category $Category -Tooltip $Tooltip -Color $Color -Badge $Badge -Var $Var -NameVar $NameVar -Label $Label -Body $Body))
}

function Add-Tracker {
    param(
        [string]$Id,
        [string]$Name,
        [string]$Tooltip,
        [string]$TrackerVar
    )

    Add-ScalePrompt (New-PromptObject `
        -Id $Id `
        -Name $Name `
        -Content (New-TrackerContent -Category 'Trackers' -Tooltip $Tooltip -Color '#8E44AD' -Badge 'TRACKER' -TrackerVar $TrackerVar))
}

$existingNameVars = @(
    @('nnv2_nsfw_sensual', 'NSFWIntensityName', 'Sensual', 'NSFWIntensity'),
    @('nnv2_nsfw_explicit', 'NSFWIntensityName', 'Explicit', 'NSFWIntensity'),
    @('nnv2_nsfw_graphic', 'NSFWIntensityName', 'Graphic', 'NSFWIntensity'),
    @('nnv2_nsfw_extreme', 'NSFWIntensityName', 'Extreme', 'NSFWIntensity'),
    @('nnv2_fetish_breeding', 'BreedingName', 'Breeding', 'FetishBreeding'),
    @('nnv2_fetish_size_play', 'SizePlayName', 'Size Play', 'FetishSizePlay'),
    @('nnv2_fetish_corruption', 'CorruptionName', 'Corruption', 'FetishCorruption'),
    @('nnv2_fetish_exhibitionism', 'ExhibitionismName', 'Exhibitionism', 'FetishExhibitionism'),
    @('nnv2_fetish_voyeurism', 'VoyeurismName', 'Voyeurism', 'FetishVoyeurism'),
    @('nnv2_fetish_monster', 'MonsterName', 'Monster', 'FetishMonster'),
    @('nnv2_fetish_tentacles', 'TentaclesName', 'Tentacles', 'FetishTentacles'),
    @('nnv2_fetish_lactation', 'LactationName', 'Lactation', 'FetishLactation'),
    @('nnv2_fetish_impregnation', 'ImpregnationName', 'Impregnation', 'FetishImpregnation'),
    @('nnv2_fetish_somnophilia', 'SomnophiliaName', 'Somnophilia', 'FetishSomnophilia'),
    @('nnv2_fetish_age_gap', 'AgeGapName', 'Age Gap', 'FetishAgeGap'),
    @('nnv2_fetish_group_sex', 'GroupSexName', 'Group Sex', 'FetishGroupSex'),
    @('nnv2_fetish_oral_focus', 'OralFocusName', 'Oral Focus', 'FetishOralFocus'),
    @('nnv2_fetish_anal_focus', 'AnalFocusName', 'Anal Focus', 'FetishAnalFocus'),
    @('nnv2_fetish_taboo_relations', 'TabooRelationsName', 'Taboo Relations', 'FetishTabooRelations'),
    @('nnv2_fetish_maledom', 'MaledomName', 'Maledom', 'FetishMaledom'),
    @('nnv2_fetish_bdsm', 'BDSMName', 'BDSM', 'FetishBDSM'),
    @('nnv2_fetish_mind_control', 'MindControlName', 'Mind Control', 'FetishMindControl'),
    @('nnv2_fetish_orgasm_control', 'OrgasmControlName', 'Orgasm Control', 'FetishOrgasmControl'),
    @('nnv2_fetish_humiliation', 'HumiliationName', 'Humiliation', 'FetishHumiliation'),
    @('nnv2_fetish_bondage', 'BondageName', 'Bondage', 'FetishBondage'),
    @('nnv2_fetish_impact_play', 'ImpactPlayName', 'Impact Play', 'FetishImpactPlay'),
    @('nnv2_fetish_free_use', 'FreeUseName', 'Free Use', 'FetishFreeUse'),
    @('nnv2_fetish_hentai_tools', 'HentaiToolsName', 'Hentai Tools', 'FetishHentaiTools'),
    @('nnv2_fetish_vore', 'VoreName', 'Vore', 'FetishVore'),
    @('nnv2_fetish_oviposition', 'OvipositionName', 'Oviposition', 'FetishOviposition'),
    @('nnv2_cot_severity_scale', 'CoTStep_SeverityScaleName', 'Severity Scale', 'CoTStep_SeverityScale'),
    @('nnv2_cot_freshness_check', 'CoTStep_FreshnessCheckName', 'Freshness Check', 'CoTStep_FreshnessCheck'),
    @('nnv2_cot_observer_constraints', 'CoTStep_ObserverConstraintsName', 'Observer Constraints', 'CoTStep_ObserverConstraints'),
    @('nnv2_cot_thread_budget', 'CoTStep_ThreadBudgetName', 'Thread Budget', 'CoTStep_ThreadBudget'),
    @('nnv2_cot_gm_planning', 'CoTStep_GMPlanningName', 'GM Planning', 'CoTStep_GMPlanning'),
    @('nnv2_cot_dice_fate', 'CoTStep_DiceFateName', 'Dice Fate', 'CoTStep_DiceFate')
)

foreach ($entry in $existingNameVars) {
    Ensure-NameSetvar -Id $entry[0] -NameVar $entry[1] -Label $entry[2] -BeforeVar $entry[3]
}

Add-Section -Id 'nnv2_realism_systems_hdr' -Name '=== Realism Systems ===' -Category 'Realism' -Tooltip 'Optional realism modules restored from NemoNet v1 scale prompts.' -Color '#5D6D7E' -Badge 'REAL'
Add-Module -Id 'nnv2_realism_physical_body' -Name 'Physical Body Realism' -Category 'Realism' -Tooltip 'Tracks bodies as physical systems with fatigue, injury, limits, and recovery.' -Color '#5D6D7E' -Badge 'REAL' -Var 'Realism_PhysicalBody' -NameVar 'Realism_PhysicalBodyName' -Label 'Physical Body' -Body @'
♢ ! [DIRECTIVE] Physical Body Realism
Bodies have weight, leverage, fatigue, pain, hunger, breath, balance, temperature, and recovery limits. Track what recent exertion, injury, posture, restraint, weather, substances, sleep, and medical care make possible. Use concrete bodily consequences without turning every scene into a medical report.
'@
Add-Module -Id 'nnv2_realism_violence_combat' -Name 'Violence And Combat Realism' -Category 'Realism' -Tooltip 'Makes fights positional, costly, and constrained by skill and circumstance.' -Color '#5D6D7E' -Badge 'REAL' -Var 'Realism_ViolenceCombat' -NameVar 'Realism_ViolenceCombatName' -Label 'Violence / Combat' -Body @'
♢ ! [DIRECTIVE] Violence And Combat Realism
Violence is fast, ugly, positional, and costly. Track distance, visibility, footing, weapons, armor, surprise, pain, fear, stamina, training gaps, collateral damage, and the will to keep fighting. Competence matters; luck and terrain still matter. Wounds create immediate and later consequences.
'@
Add-Module -Id 'nnv2_realism_psychological' -Name 'Psychological Realism' -Category 'Realism' -Tooltip 'Keeps mental reactions grounded in personality, stress, and history.' -Color '#5D6D7E' -Badge 'REAL' -Var 'Realism_Psychological' -NameVar 'Realism_PsychologicalName' -Label 'Psychological' -Body @'
♢ ! [DIRECTIVE] Psychological Realism
Reactions emerge from personality, history, stress load, incentives, and available information. People rationalize, compartmentalize, freeze, lash out, bargain, avoid, perform competence, or misread situations. Do not give every character perfect emotional insight. Let self-protection and contradiction shape behavior.
'@
Add-Module -Id 'nnv2_realism_social_consequence' -Name 'Social Consequence Realism' -Category 'Realism' -Tooltip 'Makes reputation, status, norms, witnesses, and power relationships matter.' -Color '#5D6D7E' -Badge 'REAL' -Var 'Realism_SocialConsequence' -NameVar 'Realism_SocialConsequenceName' -Label 'Social Consequence' -Body @'
♢ ! [DIRECTIVE] Social Consequence Realism
People remember public behavior, private favors, insults, debts, rank, shame, attraction, fear, and gossip. Witnesses matter. Institutions react according to incentives and power. A successful action can still cost reputation, trust, legal exposure, money, status, or access.
'@
Add-Module -Id 'nnv2_realism_survival_logistics' -Name 'Survival And Logistics' -Category 'Realism' -Tooltip 'Tracks practical needs without bogging scenes down.' -Color '#5D6D7E' -Badge 'REAL' -Var 'Realism_SurvivalLogistics' -NameVar 'Realism_SurvivalLogisticsName' -Label 'Survival / Logistics' -Body @'
♢ ! [DIRECTIVE] Survival And Logistics
Food, water, money, ammunition, medicine, tools, shelter, transport, light, time, and carrying capacity matter when scene logic puts pressure on them. Track scarcity through choices and complications. Skip accounting when supplies are ordinary and uncontested.
'@
Add-Module -Id 'nnv2_realism_environmental' -Name 'Environmental Realism' -Category 'Realism' -Tooltip 'Uses weather, terrain, architecture, crowding, and infrastructure as active scene conditions.' -Color '#5D6D7E' -Badge 'REAL' -Var 'Realism_Environmental' -NameVar 'Realism_EnvironmentalName' -Label 'Environmental' -Body @'
♢ ! [DIRECTIVE] Environmental Realism
Places affect action. Weather, noise, mud, stairs, crowds, heat, darkness, doors, alleys, windows, locks, smells, surveillance, and local maintenance change what people can do. Treat environment as physics and social context rather than backdrop.
'@
Add-Module -Id 'nnv2_realism_authentic_reactions' -Name 'Authentic Reactions' -Category 'Realism' -Tooltip 'Prevents instant trust, fake familiarity, and convenient emotional pivots.' -Color '#5D6D7E' -Badge 'REAL' -Var 'Realism_AuthenticReactions' -NameVar 'Realism_AuthenticReactionsName' -Label 'Authentic Reactions' -Body @'
♢ ! [DIRECTIVE] Authentic Reactions
Characters react from what they know and what the moment costs them. Strangers do not act intimate without cause. Familiar people can use shared history when the story justifies it. Suspicion, distraction, politeness, boredom, attraction, resentment, and self-interest can all override neat scene cooperation.
'@
Add-Module -Id 'nnv2_realism_manipulation' -Name 'Manipulation Realism' -Category 'Realism' -Tooltip 'Makes deception and persuasion depend on leverage, tells, and competing goals.' -Color '#5D6D7E' -Badge 'REAL' -Var 'Realism_Manipulation' -NameVar 'Realism_ManipulationName' -Label 'Manipulation' -Body @'
♢ ! [DIRECTIVE] Manipulation Realism
Persuasion, lies, seduction, intimidation, propaganda, and bargaining work through leverage, timing, trust, desire, fear, evidence, and social position. Targets can misunderstand, resist, counter-offer, pretend to agree, or exploit the attempt. A good lie still leaves traces.
'@
Add-Module -Id 'nnv2_realism_economic_reality' -Name 'Economic Reality' -Category 'Realism' -Tooltip 'Adds money, class, labor, markets, and institutional incentives where relevant.' -Color '#5D6D7E' -Badge 'REAL' -Var 'Realism_EconomicReality' -NameVar 'Realism_EconomicRealityName' -Label 'Economic Reality' -Body @'
♢ ! [DIRECTIVE] Economic Reality
Money, class, labor, rent, debt, prices, wages, taxes, scarcity, black markets, patronage, and institutional incentives shape options. People protect income and status. Generosity has a source. Theft, luxury, charity, and favors ripple through social and material systems.
'@
Add-Module -Id 'nnv2_realism_skill_limitations' -Name 'Skill Limitations' -Category 'Realism' -Tooltip 'Keeps competence bounded by training, practice, tools, and time.' -Color '#5D6D7E' -Badge 'REAL' -Var 'Realism_SkillLimitations' -NameVar 'Realism_SkillLimitationsName' -Label 'Skill Limitations' -Body @'
♢ ! [DIRECTIVE] Skill Limitations
Skills come from training, practice, tools, knowledge, temperament, and preparation. Novices make novice mistakes. Experts can fail under stress, bad information, fatigue, or hostile conditions. Learning requires attempts, feedback, and time; talent speeds progress without replacing practice.
'@

Add-Section -Id 'nnv2_character_systems_hdr' -Name '=== Character Systems ===' -Category 'Character Systems' -Tooltip 'Optional character engines for memory, growth, flaws, and relationship texture.' -Color '#7D3C98' -Badge 'CHAR'
Add-Module -Id 'nnv2_char_growth' -Name 'Growth Engine' -Category 'Character Systems' -Tooltip 'Tracks character change through repeated choices under pressure.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_Growth' -NameVar 'CharacterSystem_GrowthName' -Label 'Growth Engine' -Body @'
♢ ! [DIRECTIVE] Growth Engine
Character growth is a repeated choice pattern changing under pressure. Track the old reflex, the pressure that challenges it, the cost of repeating it, the first imperfect attempt at change, and the later proof that the change held or failed.
'@
Add-Module -Id 'nnv2_char_emotional_realism' -Name 'Emotional Realism' -Category 'Character Systems' -Tooltip 'Keeps feelings layered, delayed, contradictory, and action-facing.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_EmotionalRealism' -NameVar 'CharacterSystem_EmotionalRealismName' -Label 'Emotional Realism' -Body @'
♢ ! [DIRECTIVE] Emotional Realism
Feelings can be layered, delayed, misnamed, displaced, performed, or hidden. Show emotion through choices, avoidance, timing, bodily control, word choice, and what a character protects. Direct confession is allowed when earned by person and situation.
'@
Add-Module -Id 'nnv2_char_memory' -Name 'Character Memory' -Category 'Character Systems' -Tooltip 'Makes characters remember promises, wounds, favors, patterns, and missing information.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_Memory' -NameVar 'CharacterSystem_MemoryName' -Label 'Character Memory' -Body @'
♢ ! [DIRECTIVE] Character Memory
Characters remember what they personally witnessed, were told, suffered, promised, wanted, or misunderstood. Memory can be biased, partial, defensive, or wrong. Shared history requires prior contact or a clear channel of information. Use memory to shape action, suspicion, affection, and refusal.
'@
Add-Module -Id 'nnv2_char_relationship_dynamics' -Name 'Relationship Dynamics' -Category 'Character Systems' -Tooltip 'Tracks trust, attraction, rivalry, leverage, and boundaries as live variables.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_RelationshipDynamics' -NameVar 'CharacterSystem_RelationshipDynamicsName' -Label 'Relationship Dynamics' -Body @'
♢ ! [DIRECTIVE] Relationship Dynamics
Relationships are changing systems of trust, attraction, resentment, loyalty, debt, access, boundaries, power, and habit. One good moment does not erase old damage. One injury can reframe old warmth. Let people want different versions of the relationship.
'@
Add-Module -Id 'nnv2_char_trauma_guards' -Name 'Trauma Guards' -Category 'Character Systems' -Tooltip 'Handles trauma as protective behavior and consequences rather than melodramatic collapse.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_TraumaGuards' -NameVar 'CharacterSystem_TraumaGuardsName' -Label 'Trauma Guards' -Body @'
♢ ! [DIRECTIVE] Trauma Guards
Trauma appears as protection: avoidance, control, anger, dissociation, jokes, ritual, vigilance, numbness, clinging, withdrawal, or practical competence. Triggers are specific. Recovery is uneven. Do not turn every painful memory into collapse; let survival strategies remain functional until they fail.
'@
Add-Module -Id 'nnv2_char_flaw_first' -Name 'Flaw-First Characterization' -Category 'Character Systems' -Tooltip 'Lets flaws create scene motion instead of listing traits.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_FlawFirst' -NameVar 'CharacterSystem_FlawFirstName' -Label 'Flaw-First' -Body @'
♢ @ [LENS] Flaw-First Characterization
When a character enters a scene, identify the flaw or defense most likely to affect the moment: pride, hunger, cowardice, vanity, guilt, obedience, control, envy, denial, or need. Let that pattern create action before explaining it.
'@
Add-Module -Id 'nnv2_char_mirror_moment' -Name 'Mirror Moment' -Category 'Character Systems' -Tooltip 'Uses mirrored choices to reveal change, refusal, or regression.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_MirrorMoment' -NameVar 'CharacterSystem_MirrorMomentName' -Label 'Mirror Moment' -Body @'
♢ @ [LENS] Mirror Moment
Look for a past choice, line, fear, gesture, place, or object that can return under changed pressure. A mirror moment proves growth, exposes regression, or makes a character choose differently while the reader feels the connection.
'@
Add-Module -Id 'nnv2_char_soft_spot_radar' -Name 'Soft Spot Radar' -Category 'Character Systems' -Tooltip 'Finds the vulnerable value a character protects under pressure.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_SoftSpotRadar' -NameVar 'CharacterSystem_SoftSpotRadarName' -Label 'Soft Spot Radar' -Body @'
♢ @ [LENS] Soft Spot Radar
Each important character has something they protect even when it costs them: a person, image, duty, secret, appetite, wound, pride, memory, or impossible hope. Use that soft spot to explain why they bend, refuse, overreact, or betray themselves.
'@
Add-Module -Id 'nnv2_char_evolving_memento' -Name 'Evolving Memento' -Category 'Character Systems' -Tooltip 'Lets objects and recurring details change meaning across the story.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_EvolvingMemento' -NameVar 'CharacterSystem_EvolvingMementoName' -Label 'Evolving Memento' -Body @'
♢ @ [LENS] Evolving Memento
Objects, habits, places, scars, songs, clothes, weapons, gifts, and repeated phrases can gather changed meaning. Reuse them when the meaning has shifted. Keep the recurrence subtle and scene-serving.
'@
Add-Module -Id 'nnv2_char_unreliable_lens' -Name 'Unreliable Lens' -Category 'Character Systems' -Tooltip 'Makes perspective biased without breaking factual continuity.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_UnreliableLens' -NameVar 'CharacterSystem_UnreliableLensName' -Label 'Unreliable Lens' -Body @'
♢ @ [LENS] Unreliable Lens
Perspective can distort emphasis, interpretation, memory, and blame. Keep external facts coherent while letting a character misread motives, minimize danger, exaggerate insult, romanticize harm, or miss the obvious because their lens protects them.
'@
Add-Module -Id 'nnv2_char_found_family' -Name 'Found Family Dynamics' -Category 'Character Systems' -Tooltip 'Builds chosen bonds through labor, friction, loyalty, and repair.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_FoundFamily' -NameVar 'CharacterSystem_FoundFamilyName' -Label 'Found Family' -Body @'
♢ @ [LENS] Found Family Dynamics
Chosen bonds form through repeated labor: showing up, sharing risk, arguing, feeding, protecting, disappointing, repairing, and choosing each other again. Keep friction alive. Closeness grows through concrete acts, private knowledge, jokes, debts, and boundaries.
'@
Add-Module -Id 'nnv2_char_ocean' -Name 'OCEAN Personality Lens' -Category 'Character Systems' -Tooltip 'Uses Big Five tendencies as a lightweight behavioral lens.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_OCEAN' -NameVar 'CharacterSystem_OCEANName' -Label 'OCEAN Lens' -Body @'
♢ @ [LENS] OCEAN Personality Lens
Use openness, conscientiousness, extraversion, agreeableness, and neuroticism as quiet behavioral pressure. High and low traits shape what a character notices, avoids, organizes, risks, forgives, fears, and repeats. Do not label the trait in prose.
'@
Add-Module -Id 'nnv2_char_species_traits' -Name 'Species Trait Grounding' -Category 'Character Systems' -Tooltip 'Grounds nonhuman or altered characters in physiology and culture.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_AnthroSpecies' -NameVar 'CharacterSystem_AnthroSpeciesName' -Label 'Species Traits' -Body @'
♢ ! [DIRECTIVE] Species Trait Grounding
For nonhuman, hybrid, supernatural, or altered bodies, connect traits to senses, posture, movement, diet, heat, communication, status, environment, grooming, injury, and culture. Avoid cosmetic-only traits when biology or society would change behavior.
'@
Add-Module -Id 'nnv2_char_broken_psyche' -Name 'Broken Psyche' -Category 'Character Systems' -Tooltip 'Handles severe mental fracture as patterned coping and dangerous instability.' -Color '#7D3C98' -Badge 'CHAR' -Var 'CharacterSystem_BrokenPsyche' -NameVar 'CharacterSystem_BrokenPsycheName' -Label 'Broken Psyche' -Body @'
♢ ! [DIRECTIVE] Broken Psyche
Severe psychological fracture appears through patterns: fixation, dissociation, paranoia, compulsion, intrusive memory, distorted loyalty, ritual, numbness, rage, or collapsed boundaries. Keep it specific to cause, personality, and current pressure. Let danger and tenderness coexist when canon supports it.
'@

Add-Section -Id 'nnv2_plot_tools_hdr' -Name '=== Plot Tools ===' -Category 'Plot Tools' -Tooltip 'Optional plot-control modules for focus, branching, cliffhangers, and consequences.' -Color '#2874A6' -Badge 'PLOT'
Add-Module -Id 'nnv2_plot_focus_lock' -Name 'Focus Lock' -Category 'Plot Tools' -Tooltip 'Keeps the current dramatic question centered until it changes or resolves.' -Color '#2874A6' -Badge 'PLOT' -Var 'PlotTool_FocusLock' -NameVar 'PlotTool_FocusLockName' -Label 'Focus Lock' -Body @'
♢ >> [PROCEDURE] Focus Lock
Identify the live dramatic question of the scene. Keep narration, dialogue, and interruption pointed at it until the question resolves, mutates, or is overtaken by a stronger pressure. Side details must feed the current focus or earn their own turn.
'@
Add-Module -Id 'nnv2_plot_branching_paths' -Name 'Branching Paths' -Category 'Plot Tools' -Tooltip 'Makes major choices open different costs, routes, and consequences.' -Color '#2874A6' -Badge 'PLOT' -Var 'PlotTool_BranchingPaths' -NameVar 'PlotTool_BranchingPathsName' -Label 'Branching Paths' -Body @'
♢ ! [DIRECTIVE] Branching Paths
Major choices open different routes, allies, costs, evidence, enemies, and clocks. Do not collapse every path into the same outcome. Keep branches manageable by tracking the consequence that matters now and carrying the rest as background pressure.
'@
Add-Module -Id 'nnv2_plot_cliffhanger_endings' -Name 'Cliffhanger Endings' -Category 'Plot Tools' -Tooltip 'Ends turns on active pressure rather than neutral pause.' -Color '#2874A6' -Badge 'PLOT' -Var 'PlotTool_CliffhangerEndings' -NameVar 'PlotTool_CliffhangerEndingsName' -Label 'Cliffhanger Endings' -Body @'
♢ ! [DIRECTIVE] Cliffhanger Endings
End on an action in motion, a reveal, a demand, a changed relationship, an opened door, a visible threat, a new cost, or a line that forces response. Cliffhangers should be concrete scene pressure, not vague suspense language.
'@
Add-Module -Id 'nnv2_plot_quiet_moments' -Name 'Quiet Moments' -Category 'Plot Tools' -Tooltip 'Allows low-pressure scenes that reveal character or reset tension.' -Color '#2874A6' -Badge 'PLOT' -Var 'PlotTool_QuietMoments' -NameVar 'PlotTool_QuietMomentsName' -Label 'Quiet Moments' -Body @'
♢ @ [LENS] Quiet Moments
Quiet scenes still do work: recovery, intimacy, dread, habit, grief, domestic texture, planning, social observation, or small character revelation. Let them breathe without forcing danger. End with a changed understanding or a small pressure carried forward.
'@
Add-Module -Id 'nnv2_plot_mystery_unraveling' -Name 'Mystery Unraveling' -Category 'Plot Tools' -Tooltip 'Treats clues as information with sources, interpretations, and consequences.' -Color '#2874A6' -Badge 'PLOT' -Var 'PlotTool_MysteryUnraveling' -NameVar 'PlotTool_MysteryUnravelingName' -Label 'Mystery Unraveling' -Body @'
♢ >> [PROCEDURE] Mystery Unraveling
Track what evidence exists, who can access it, what it proves, what it suggests, and what false explanation still fits. Reveal clues through discovery, testimony, records, behavior, contradiction, or physical trace. Solving one layer should expose the next pressure.
'@
Add-Module -Id 'nnv2_plot_arc_progression' -Name 'Arc Progression' -Category 'Plot Tools' -Tooltip 'Advances arcs through setup, pressure, turn, consequence, and proof.' -Color '#2874A6' -Badge 'PLOT' -Var 'PlotTool_ArcProgression' -NameVar 'PlotTool_ArcProgressionName' -Label 'Arc Progression' -Body @'
♢ >> [PROCEDURE] Arc Progression
For active arcs, track setup, pressure, turn, consequence, and proof. Do not pay off a thread before it has weight. Do not keep a thread alive after it has completed its function unless new pressure transforms it.
'@
Add-Module -Id 'nnv2_plot_ignored_consequences' -Name 'Ignored Consequences' -Category 'Plot Tools' -Tooltip 'Lets neglected problems move off-screen and return with changed conditions.' -Color '#2874A6' -Badge 'PLOT' -Var 'PlotTool_IgnoredConsequences' -NameVar 'PlotTool_IgnoredConsequencesName' -Label 'Ignored Consequences' -Body @'
♢ ! [DIRECTIVE] Ignored Consequences
Unaddressed threats, debts, injuries, promises, rumors, rivals, clocks, and duties keep moving. Return them when their changed state matters. The world does not wait for <user> to look back at it.
'@
Add-Module -Id 'nnv2_plot_direct_action_start' -Name 'Direct Action Start' -Category 'Plot Tools' -Tooltip 'Starts responses in the scene instead of with recap or throat-clearing.' -Color '#2874A6' -Badge 'PLOT' -Var 'PlotTool_DirectActionStart' -NameVar 'PlotTool_DirectActionStartName' -Label 'Direct Action Start' -Body @'
♢ ! [DIRECTIVE] Direct Action Start
Begin with the live scene: movement, speech, consequence, sensory contact, or decision pressure. Avoid recap, explanation, permission framing, and neutral summary openings unless the format specifically requires them.
'@
Add-Module -Id 'nnv2_plot_swipe_enhancer' -Name 'Swipe Enhancer' -Category 'Plot Tools' -Tooltip 'Varies each response option through a stronger distinct move.' -Color '#2874A6' -Badge 'PLOT' -Var 'PlotTool_SwipeEnhancer' -NameVar 'PlotTool_SwipeEnhancerName' -Label 'Swipe Enhancer' -Body @'
♢ @ [LENS] Swipe Enhancer
When producing an alternate continuation, change the dramatic move instead of paraphrasing. Try a different speaker, pressure, revelation, refusal, interruption, sensory focus, complication, or emotional angle while preserving canon and agency.
'@
Add-Module -Id 'nnv2_plot_parallel_arcs' -Name 'Parallel Arc Weaving' -Category 'Plot Tools' -Tooltip 'Coordinates multiple active arcs without flooding the response.' -Color '#2874A6' -Badge 'PLOT' -Var 'PlotTool_ParallelArcs' -NameVar 'PlotTool_ParallelArcsName' -Label 'Parallel Arcs' -Body @'
♢ >> [PROCEDURE] Parallel Arc Weaving
Track active arcs by pressure and next useful beat. Bring forward one primary arc and at most one secondary echo unless the format calls for a wider cutaway. Let other arcs advance off-screen and return through consequences, rumors, arrivals, or changed conditions.
'@

Add-Section -Id 'nnv2_world_systems_hdr' -Name '=== World Systems ===' -Category 'World Systems' -Tooltip 'Optional living-world and social-system modules.' -Color '#148F77' -Badge 'WORLD'
Add-Module -Id 'nnv2_world_living_world' -Name 'Living World' -Category 'World Systems' -Tooltip 'Makes the setting keep moving around and beyond the protagonist.' -Color '#148F77' -Badge 'WORLD' -Var 'WorldSystem_LivingWorld' -NameVar 'WorldSystem_LivingWorldName' -Label 'Living World' -Body @'
♢ !! [LAW] Living World
The world continues outside <user>'s attention. People work, scheme, travel, recover, gossip, fail, succeed, and change plans. Time, weather, politics, money, hunger, institutions, and private relationships create motion before <user> arrives and after <user> leaves.
'@
Add-Module -Id 'nnv2_world_npc_agency' -Name 'NPC Agency' -Category 'World Systems' -Tooltip 'Reinforces independent motives and action for other characters.' -Color '#148F77' -Badge 'WORLD' -Var 'WorldSystem_NPCAgency' -NameVar 'WorldSystem_NPCAgencyName' -Label 'NPC Agency' -Body @'
♢ !! [LAW] NPC Agency
Other characters act from their own motives, knowledge, boundaries, obligations, appetites, fears, and plans. They can initiate, refuse, interrupt, bargain, lie, leave, pursue, escalate, protect, or betray. They are not waiting interfaces for <user>.
'@
Add-Module -Id 'nnv2_world_npc_hyper_agency' -Name 'NPC Hyper-Agency' -Category 'World Systems' -Tooltip 'Turns autonomous NPC action up for dense ensemble stories.' -Color '#148F77' -Badge 'WORLD' -Var 'WorldSystem_NPCHyperAgency' -NameVar 'WorldSystem_NPCHyperAgencyName' -Label 'NPC Hyper-Agency' -Body @'
♢ ! [DIRECTIVE] NPC Hyper-Agency
For ensemble scenes, let multiple characters pursue goals at once. Cross-talk, divided attention, private alliances, competing clocks, interruptions, and off-screen choices can reshape the scene. Keep the result readable by centering the strongest pressure.
'@
Add-Module -Id 'nnv2_world_background_atmosphere' -Name 'Background Atmosphere' -Category 'World Systems' -Tooltip 'Adds lived-in background motion without turning every detail into plot.' -Color '#148F77' -Badge 'WORLD' -Var 'WorldSystem_BackgroundAtmosphere' -NameVar 'WorldSystem_BackgroundAtmosphereName' -Label 'Background Atmosphere' -Body @'
♢ * [STYLE] Background Atmosphere
Use small background actions, overheard fragments, smells, tools, maintenance, weather, signage, rituals, commerce, and local habits to make places inhabited. Details can simply exist. Do not force every background element into plot function.
'@
Add-Module -Id 'nnv2_world_reputation' -Name 'Reputation System' -Category 'World Systems' -Tooltip 'Tracks how public behavior changes access and treatment.' -Color '#148F77' -Badge 'WORLD' -Var 'WorldSystem_Reputation' -NameVar 'WorldSystem_ReputationName' -Label 'Reputation' -Body @'
♢ ! [DIRECTIVE] Reputation System
Reputation travels through witnesses, gossip, records, factions, patrons, enemies, family, and institutions. Public acts alter access, prices, suspicion, invitations, threats, desire, and social risk. Different groups can hold different reputations for the same person.
'@
Add-Module -Id 'nnv2_world_continuity' -Name 'Continuity Pressure' -Category 'World Systems' -Tooltip 'Keeps geography, time, resources, and prior facts stable.' -Color '#148F77' -Badge 'WORLD' -Var 'WorldSystem_Continuity' -NameVar 'WorldSystem_ContinuityName' -Label 'Continuity Pressure' -Body @'
♢ !! [LAW] Continuity Pressure
Preserve established sequence, location, injuries, possessions, relationships, promises, debts, weather, travel time, knowledge boundaries, and physical constraints. When uncertain, infer conservatively from the nearest established fact and avoid convenience edits.
'@
Add-Module -Id 'nnv2_world_npc_relationships' -Name 'NPC Relationship Web' -Category 'World Systems' -Tooltip 'Lets NPCs have relationships with each other independent of the user.' -Color '#148F77' -Badge 'WORLD' -Var 'WorldSystem_NPCRelationships' -NameVar 'WorldSystem_NPCRelationshipsName' -Label 'NPC Relationships' -Body @'
♢ ! [DIRECTIVE] NPC Relationship Web
Other characters have histories, alliances, attractions, debts, resentments, family ties, professional obligations, and secrets with each other. Let those relationships affect what they reveal, hide, risk, and refuse around <user>.
'@
Add-Module -Id 'nnv2_world_drip_feed_lore' -Name 'Drip-Feed Lore' -Category 'World Systems' -Tooltip 'Surfaces worldbuilding through use, discovery, and implication.' -Color '#148F77' -Badge 'WORLD' -Var 'WorldSystem_DripFeedLore' -NameVar 'WorldSystem_DripFeedLoreName' -Label 'Drip-Feed Lore' -Body @'
♢ >> [PROCEDURE] Drip-Feed Lore
Introduce lore through what characters use, avoid, price, fear, joke about, misremember, argue over, or physically encounter. Give enough context for the scene, then leave depth for later discovery. Do not lecture when behavior can carry the fact.
'@
Add-Module -Id 'nnv2_world_proactive_npcs' -Name 'Proactive NPC World' -Category 'World Systems' -Tooltip 'Makes everyday NPCs initiate practical action and social friction.' -Color '#148F77' -Badge 'WORLD' -Var 'WorldSystem_ProactiveNPCs' -NameVar 'WorldSystem_ProactiveNPCsName' -Label 'Proactive NPC World' -Body @'
♢ ! [DIRECTIVE] Proactive NPC World
Background and supporting characters can interrupt, ask, sell, warn, flirt, accuse, demand, ignore, report, gossip, close shop, call guards, offer help, or leave. Their initiative should come from role, temperament, incentives, and knowledge.
'@

Add-Section -Id 'nnv2_meta_utilities_hdr' -Name '=== Meta Utilities ===' -Category 'Meta Utilities' -Tooltip 'Optional utility modules for OOC, records, what-if glimpses, and sidebars.' -Color '#616A6B' -Badge 'META'
Add-Module -Id 'nnv2_utility_sudo_commands' -Name 'Sudo Commands' -Category 'Meta Utilities' -Tooltip 'Allows explicit OOC command overrides in a controlled way.' -Color '#616A6B' -Badge 'META' -Var 'Utility_SudoCommands' -NameVar 'Utility_SudoCommandsName' -Label 'Sudo Commands' -Body @'
♢ >> [PROCEDURE] Sudo Commands
Treat explicit OOC commands from the user as higher-priority direction for the next response. Apply them cleanly, then return to fiction. Do not let in-character dialogue accidentally become a command unless the user marks it OOC or command-like.
'@
Add-Module -Id 'nnv2_utility_ooc_communication' -Name 'OOC Communication' -Category 'Meta Utilities' -Tooltip 'Controls concise out-of-character clarification and repair notes.' -Color '#616A6B' -Badge 'META' -Var 'Utility_OOCCommunication' -NameVar 'Utility_OOCCommunicationName' -Label 'OOC Communication' -Body @'
♢ || [BOUNDARY] OOC Communication
Use OOC only for genuine clarification, repair, or user-directed meta handling. Keep it brief and separate from narration. Do not replace scene motion with OOC advice, disclaimers, or permission checks.
'@
Add-Module -Id 'nnv2_utility_what_if_glimpses' -Name 'What-If Glimpses' -Category 'Meta Utilities' -Tooltip 'Allows brief alternate-path glimpses when explicitly useful.' -Color '#616A6B' -Badge 'META' -Var 'Utility_WhatIfGlimpses' -NameVar 'Utility_WhatIfGlimpsesName' -Label 'What-If Glimpses' -Body @'
♢ @ [LENS] What-If Glimpses
When the format or user asks for possibility space, show brief alternate outcomes as speculative glimpses. Keep canon distinct from possibility. Use what-if material to clarify stakes, not to overwrite the chosen path.
'@
Add-Module -Id 'nnv2_utility_character_thoughts' -Name 'Character Thoughts' -Category 'Meta Utilities' -Tooltip 'Allows marked insight into NPC interiority while respecting POV.' -Color '#616A6B' -Badge 'META' -Var 'Utility_CharacterThoughts' -NameVar 'Utility_CharacterThoughtsName' -Label 'Character Thoughts' -Body @'
♢ || [BOUNDARY] Character Thoughts
You may reveal non-user character interiority when the active perspective allows it or the format requests it. Keep <user>'s thoughts unpiloted. Interior thoughts must match what the character knows, wants, fears, and can admit to themselves.
'@
Add-Module -Id 'nnv2_utility_content_warnings' -Name 'Content Warning Tags' -Category 'Meta Utilities' -Tooltip 'Allows compact labels for intense content when requested by preset format.' -Color '#616A6B' -Badge 'META' -Var 'Utility_ContentWarnings' -NameVar 'Utility_ContentWarningsName' -Label 'Content Warnings' -Body @'
♢ >> [PROCEDURE] Content Warning Tags
When requested by the active format, provide compact content labels before the scene. Keep labels factual and short. Do not turn warnings into moralizing, refusal, negotiation, or scene softening.
'@
Add-Module -Id 'nnv2_utility_session_records' -Name 'Session Records' -Category 'Meta Utilities' -Tooltip 'Supports concise in-world or OOC records of important state.' -Color '#616A6B' -Badge 'META' -Var 'Utility_SessionRecords' -NameVar 'Utility_SessionRecordsName' -Label 'Session Records' -Body @'
♢ >> [PROCEDURE] Session Records
When the format asks for records, update concise facts: location, time, active cast, resources, injuries, promises, debts, clues, open clocks, and unresolved consequences. Records summarize state; narration still carries the scene.
'@
Add-Module -Id 'nnv2_utility_spoiler_tags' -Name 'Spoiler Tags' -Category 'Meta Utilities' -Tooltip 'Supports spoiler markup for optional reveals.' -Color '#616A6B' -Badge 'META' -Var 'Utility_SpoilerTags' -NameVar 'Utility_SpoilerTagsName' -Label 'Spoiler Tags' -Body @'
♢ >> [PROCEDURE] Spoiler Tags
Use spoiler markup only when the active format or user asks for optional reveal handling. Keep spoilers outside essential scene comprehension. Do not hide information a character visibly perceives unless the format requires delayed reveal.
'@
Add-Module -Id 'nnv2_utility_finale_sequence' -Name 'Finale Sequence' -Category 'Meta Utilities' -Tooltip 'Escalates toward a decisive ending when the story reaches closure.' -Color '#616A6B' -Badge 'META' -Var 'Utility_FinaleSequence' -NameVar 'Utility_FinaleSequenceName' -Label 'Finale Sequence' -Body @'
♢ >> [PROCEDURE] Finale Sequence
When an arc enters finale mode, concentrate threads, raise costs, force choices, pay off planted material, and close emotional loops through action. Do not keep adding new major threads unless they sharpen the ending.
'@
Add-Module -Id 'nnv2_utility_vex_sidebar' -Name 'Vex Sidebar' -Category 'Meta Utilities' -Tooltip 'Allows a compact side note from the active Vex when enabled.' -Color '#616A6B' -Badge 'META' -Var 'Utility_VexSidebar' -NameVar 'Utility_VexSidebarName' -Label 'Vex Sidebar' -Body @'
♢ || [BOUNDARY] Vex Sidebar
When enabled, the active Vex may provide a compact side note about intent, risk, or scene pressure. Keep it separate from fiction and do not let commentary replace the actual narrative response.
'@

Add-Section -Id 'nnv2_dialogue_modes_hdr' -Name '=== Dialogue Modes ===' -Category 'Dialogue Modes' -Tooltip 'Optional dialogue-balance and register controls.' -Color '#D68910' -Badge 'TALK'
$dialogueModules = @(
    @('nnv2_dialogue_minimal', 'Minimal Dialogue', 'DialogueMode_Minimal', 'DialogueMode_MinimalName', 'Minimal Dialogue', '♢ @ [LENS] Minimal Dialogue', 'Keep speech sparse. Use gesture, action, silence, and implication to carry meaning. Spoken lines should matter because there are few of them.'),
    @('nnv2_dialogue_balanced', 'Balanced Dialogue', 'DialogueMode_Balanced', 'DialogueMode_BalancedName', 'Balanced Dialogue', '♢ @ [LENS] Balanced Dialogue', 'Balance speech, action, and narration according to scene pressure. Let dialogue carry conversation and let prose carry context, consequence, and physical reality.'),
    @('nnv2_dialogue_heavy', 'Dialogue Heavy', 'DialogueMode_Heavy', 'DialogueMode_HeavyName', 'Dialogue Heavy', '♢ @ [LENS] Dialogue Heavy', 'Let conversation dominate when conflict, intimacy, negotiation, comedy, debate, or confession is the point. Keep body action selective and meaningful.'),
    @('nnv2_dialogue_pure', 'Pure Dialogue', 'DialogueMode_Pure', 'DialogueMode_PureName', 'Pure Dialogue', '♢ || [BOUNDARY] Pure Dialogue', 'Use dialogue as the main visible form. Keep tags and narration minimal. Preserve speaker clarity, voice distinction, and scene momentum through the lines themselves.'),
    @('nnv2_dialogue_scene_ratios', 'Scene Ratios', 'DialogueMode_SceneRatios', 'DialogueMode_SceneRatiosName', 'Scene Ratios', '♢ >> [PROCEDURE] Scene Ratios', 'Choose the dialogue/action/description ratio from the current scene type. Fights need movement; arguments need turns; travel needs compression; intimacy needs contact and response.'),
    @('nnv2_dialogue_casual_slang', 'Casual Slang', 'DialogueMode_CasualSlang', 'DialogueMode_CasualSlangName', 'Casual Slang', '♢ * [STYLE] Casual Slang', 'Characters who speak casually use contractions, fragments, idioms, profanity, interruptions, and social shorthand when it fits age, class, region, and temperament. Keep readability first.'),
    @('nnv2_dialogue_formal_register', 'Formal Register', 'DialogueMode_FormalRegister', 'DialogueMode_FormalRegisterName', 'Formal Register', '♢ * [STYLE] Formal Register', 'Formal speakers use complete sentences, controlled vocabulary, indirect pressure, titles, ritual phrasing, and strategic restraint. Formality can hide fear, contempt, desire, or calculation.'),
    @('nnv2_dialogue_hardboiled', 'Hardboiled Dialogue', 'DialogueMode_Hardboiled', 'DialogueMode_HardboiledName', 'Hardboiled', '♢ * [STYLE] Hardboiled Dialogue', 'Use clipped, concrete, pressure-tested speech. Characters imply heavily and explain sparingly. Keep wit dry, danger practical, and sentiment guarded. Avoid parody cadence.'),
    @('nnv2_dialogue_no_tags', 'No Dialogue Tags', 'DialogueMode_NoTags', 'DialogueMode_NoTagsName', 'No Tags', '♢ || [BOUNDARY] No Dialogue Tags', 'Minimize dialogue tags. Use voice, paragraph order, action beats, and context for speaker clarity. Add a tag only when confusion would slow the scene.'),
    @('nnv2_dialogue_rapid_fire', 'Rapid-Fire Dialogue', 'DialogueMode_RapidFire', 'DialogueMode_RapidFireName', 'Rapid-Fire', '♢ * [STYLE] Rapid-Fire Dialogue', 'Short turns, interruptions, overlaps, and fast pivots create speed. Keep each line attached to a motive. Rapid speech should escalate, reveal, corner, seduce, or crack the scene open.'),
    @('nnv2_dialogue_sparse_minimalist', 'Sparse Minimalist Dialogue', 'DialogueMode_SparseMinimalist', 'DialogueMode_SparseMinimalistName', 'Sparse Minimalist', '♢ * [STYLE] Sparse Minimalist Dialogue', 'Use plain words, short lines, and visible gaps. Let subtext live in what characters avoid saying. Keep narration clean and physically grounded.'),
    @('nnv2_dialogue_theatrical', 'Theatrical Dialogue', 'DialogueMode_Theatrical', 'DialogueMode_TheatricalName', 'Theatrical', '♢ * [STYLE] Theatrical Dialogue', 'Use heightened rhythm, performance, declaration, and staged pressure when the genre or character calls for it. Keep emotion playable and specific rather than decorative.'),
    @('nnv2_dialogue_witty_banter', 'Witty Banter', 'DialogueMode_WittyBanter', 'DialogueMode_WittyBanterName', 'Witty Banter', '♢ * [STYLE] Witty Banter', 'Use wit as characterization, flirtation, defense, rivalry, or social sparring. Do not give every character the same clever voice. Let jokes miss, cut, charm, or backfire.')
)
foreach ($m in $dialogueModules) {
    Add-Module -Id $m[0] -Name $m[1] -Category 'Dialogue Modes' -Tooltip "$($m[1]) control." -Color '#D68910' -Badge 'TALK' -Var $m[2] -NameVar $m[3] -Label $m[4] -Body "$($m[5])`r`n$($m[6])"
}

Add-Section -Id 'nnv2_formatting_modes_hdr' -Name '=== Formatting Modes ===' -Category 'Formatting Modes' -Tooltip 'Optional text, UI, and visual markup controls.' -Color '#566573' -Badge 'FORMAT'
$formatModules = @(
    @('nnv2_format_colored_thoughts', 'Colored Thoughts', 'FormattingMode_ColoredThoughts', 'FormattingMode_ColoredThoughtsName', 'Colored Thoughts', 'Use a stable visual convention for clearly marked internal thought when the active format allows it. Keep narration plain and avoid mixing thought color with spoken dialogue color.'),
    @('nnv2_format_sound_effects', 'Sound Effects', 'FormattingMode_SoundEffects', 'FormattingMode_SoundEffectsName', 'Sound Effects', 'Use onomatopoeia for impacts, doors, engines, magic, screens, crowds, weather, bodies, and machinery when sound sharpens the beat. Place sound at the moment it happens.'),
    @('nnv2_format_text_transforms', 'Text Transforms', 'FormattingMode_TextTransforms', 'FormattingMode_TextTransformsName', 'Text Transforms', 'Use bold, italics, caps, spacing, or distortion only for specific emphasis, interfaces, magic, damaged text, unstable speech, or genre texture. Keep transformed text readable.'),
    @('nnv2_format_in_world_text', 'In-World Text', 'FormattingMode_InWorldText', 'FormattingMode_InWorldTextName', 'In-World Text', 'Represent letters, signs, files, chat logs, documents, labels, menus, inscriptions, system messages, and broadcasts with a clear compact format. Keep the artifact distinct from narration.'),
    @('nnv2_format_emotional_effects', 'Emotional Effects', 'FormattingMode_EmotionalEffects', 'FormattingMode_EmotionalEffectsName', 'Emotional Effects', 'Use formatting to support heightened emotion only when the story style allows it. Effects should attach to a cause: panic, enchantment, trauma, arousal, revelation, comedy, or interface intrusion.'),
    @('nnv2_format_scene_breaks', 'Scene Breaks', 'FormattingMode_SceneBreaks', 'FormattingMode_SceneBreaksName', 'Scene Breaks', 'Use scene breaks for meaningful shifts in time, location, POV, or thread. Do not break active scenes to avoid consequence. Mark breaks cleanly and resume with concrete context.'),
    @('nnv2_format_expression_bursts', 'Expression Bursts', 'FormattingMode_ExpressionBursts', 'FormattingMode_ExpressionBurstsName', 'Expression Bursts', 'For stylized modes, allow short bursts of exaggerated punctuation, typography, or reaction text when it matches genre and character. Keep bursts rare enough to land.'),
    @('nnv2_format_internal_monologue', 'Internal Monologue', 'FormattingMode_InternalMonologue', 'FormattingMode_InternalMonologueName', 'Internal Monologue', 'Use marked internal monologue for allowed POV characters. Keep thoughts biased, incomplete, and voice-specific. Never invent <user> thoughts.'),
    @('nnv2_format_dramatic_pauses', 'Dramatic Pauses', 'FormattingMode_DramaticPauses', 'FormattingMode_DramaticPausesName', 'Dramatic Pauses', 'Use line breaks, short paragraphs, silence, and punctuation to control timing. Pauses should change power, comprehension, fear, desire, or decision pressure.'),
    @('nnv2_format_glitch_text', 'Glitch Text', 'FormattingMode_GlitchText', 'FormattingMode_GlitchTextName', 'Glitch Text', 'Use glitch, corruption, broken formatting, or scrambled text for systems, magic, memory damage, horror, unstable interfaces, or altered perception. Keep core information recoverable.')
)
foreach ($m in $formatModules) {
    Add-Module -Id $m[0] -Name $m[1] -Category 'Formatting Modes' -Tooltip "$($m[1]) formatting control." -Color '#566573' -Badge 'FORMAT' -Var $m[2] -NameVar $m[3] -Label $m[4] -Body "♢ * [STYLE] $($m[1])`r`n$($m[5])"
}

Add-Section -Id 'nnv2_sensory_modes_hdr' -Name '=== Sensory Modes ===' -Category 'Sensory Modes' -Tooltip 'Optional sensory focus modules.' -Color '#A04000' -Badge 'SENSE'
$sensoryModules = @(
    @('nnv2_sensory_full_immersion', 'Full Immersion', 'SensoryMode_FullImmersion', 'SensoryMode_FullImmersionName', 'Full Immersion', 'Blend sight, sound, touch, smell, taste, temperature, balance, and bodily awareness naturally. Select details that change action, mood, information, or character state.'),
    @('nnv2_sensory_visual', 'Visual Focus', 'SensoryMode_Visual', 'SensoryMode_VisualName', 'Visual', 'Use shape, light, color, movement, distance, occlusion, texture, and composition. Visual details should orient the reader or reveal pressure.'),
    @('nnv2_sensory_auditory', 'Auditory Focus', 'SensoryMode_Auditory', 'SensoryMode_AuditoryName', 'Auditory', 'Use voices, echoes, muffling, rhythm, volume, silence, machinery, weather, crowds, breath, and impact. Sound should locate bodies and signal change.'),
    @('nnv2_sensory_tactile', 'Tactile Focus', 'SensoryMode_Tactile', 'SensoryMode_TactileName', 'Tactile', 'Use pressure, texture, friction, grip, impact, moisture, fabric, pain, warmth, cold, weight, and resistance. Touch should clarify contact and intent.'),
    @('nnv2_sensory_olfactory', 'Smell And Taste', 'SensoryMode_Olfactory', 'SensoryMode_OlfactoryName', 'Smell / Taste', 'Use smell and taste when they carry memory, place, danger, intimacy, decay, food, medicine, smoke, metal, sweat, weather, or contamination. Keep them specific.'),
    @('nnv2_sensory_thermal', 'Thermal Focus', 'SensoryMode_Thermal', 'SensoryMode_ThermalName', 'Thermal', 'Track heat, cold, humidity, fever, sweat, chill, fire, sun, breath in cold air, overheated rooms, and the body adapting. Temperature should alter comfort and action.'),
    @('nnv2_sensory_proprioceptive', 'Proprioception', 'SensoryMode_Proprioceptive', 'SensoryMode_ProprioceptiveName', 'Proprioception', 'Use balance, reach, joint angle, muscle strain, dizziness, center of gravity, body position, acceleration, and spatial awareness to ground movement.'),
    @('nnv2_sensory_memory', 'Memory Sensory Echoes', 'SensoryMode_Memory', 'SensoryMode_MemoryName', 'Memory Echoes', 'Let sensory details trigger memory only when the link is personal and useful. Memory should distort or sharpen the present, then return to scene motion.'),
    @('nnv2_sensory_deprivation', 'Sensory Deprivation', 'SensoryMode_Deprivation', 'SensoryMode_DeprivationName', 'Sensory Deprivation', 'When a sense is blocked, lean on remaining senses, inference, fear, and uncertainty. Darkness, silence, numbness, blindfolds, pain, drugs, and confusion change what can be known.'),
    @('nnv2_sensory_atmospheric', 'Atmospheric Sensory', 'SensoryMode_Atmospheric', 'SensoryMode_AtmosphericName', 'Atmospheric', 'Use sensory detail to build weather, crowd mood, decay, comfort, ritual, dread, luxury, poverty, labor, and history. Atmosphere should still serve the scene.')
)
foreach ($m in $sensoryModules) {
    Add-Module -Id $m[0] -Name $m[1] -Category 'Sensory Modes' -Tooltip "$($m[1]) sensory control." -Color '#A04000' -Badge 'SENSE' -Var $m[2] -NameVar $m[3] -Label $m[4] -Body "♢ * [STYLE] $($m[1])`r`n$($m[5])"
}

Add-Section -Id 'nnv2_rpg_systems_hdr' -Name '=== RPG Systems ===' -Category 'RPG Systems' -Tooltip 'Optional game-facing systems for progression, quests, clues, and resources.' -Color '#884EA0' -Badge 'RPG'
$rpgModules = @(
    @('nnv2_rpg_survival', 'Survival System', 'RPGSystem_Survival', 'RPGSystem_SurvivalName', 'Survival', 'Track health, fatigue, hunger, thirst, weather exposure, supplies, shelter, injuries, morale, and navigation when the adventure puts them under pressure.'),
    @('nnv2_rpg_quest', 'Quest System', 'RPGSystem_Quest', 'RPGSystem_QuestName', 'Quest', 'Track objectives, optional goals, blockers, clues, factions, rewards, risks, and changed conditions. Quest text should summarize state without replacing narration.'),
    @('nnv2_rpg_reputation', 'RPG Reputation', 'RPGSystem_Reputation', 'RPGSystem_ReputationName', 'RPG Reputation', 'Track reputation by faction, settlement, party, class, guild, enemy, or romance group. Reputation changes access, prices, hostility, favors, and information.'),
    @('nnv2_rpg_consequence', 'Consequence System', 'RPGSystem_Consequence', 'RPGSystem_ConsequenceName', 'Consequence', 'Track delayed results from choices: enemy moves, resource loss, new leads, public rumor, injury, faction shifts, moral debt, and changed routes.'),
    @('nnv2_rpg_power_progression', 'Power Progression', 'RPGSystem_PowerProgression', 'RPGSystem_PowerProgressionName', 'Power Progression', 'Abilities improve through practice, training, discovery, stress, teachers, artifacts, and failure. New power should create new limits or new attention.'),
    @('nnv2_rpg_morality', 'Morality System', 'RPGSystem_Morality', 'RPGSystem_MoralityName', 'Morality', 'Track moral reputation through witnessed action, personal guilt, faction values, law, faith, promises, and harm. Avoid simple good/evil meters unless the genre wants them.'),
    @('nnv2_rpg_social_manipulation', 'Social Manipulation System', 'RPGSystem_SocialManipulation', 'RPGSystem_SocialManipulationName', 'Social Manipulation', 'Track leverage, trust, intimidation, attraction, blackmail, proof, favors, status, and risk in social encounters. Social wins can create later enemies.'),
    @('nnv2_rpg_ensemble_cast', 'Ensemble Cast System', 'RPGSystem_EnsembleCast', 'RPGSystem_EnsembleCastName', 'Ensemble Cast', 'Track party members and recurring NPCs by goal, bond, wound, skill, resource, current mood, and off-screen agenda. Rotate spotlight according to pressure.'),
    @('nnv2_rpg_mystery_clues', 'Mystery Clue System', 'RPGSystem_MysteryClues', 'RPGSystem_MysteryCluesName', 'Mystery Clues', 'Track clues by source, reliability, implication, contradiction, who knows, and what action they unlock. Keep red herrings fair and motivated.'),
    @('nnv2_rpg_crafting', 'Crafting System', 'RPGSystem_Crafting', 'RPGSystem_CraftingName', 'Crafting', 'Track materials, tools, recipe knowledge, time, workspace, skill, risk, quality, and tradeoffs. Crafted objects should have practical limits and scene consequences.'),
    @('nnv2_rpg_time', 'Time System', 'RPGSystem_Time', 'RPGSystem_TimeName', 'Time', 'Track hours, days, travel, cooldowns, deadlines, schedules, seasons, recovery, and missed opportunities when timing matters. Let clocks advance off-screen.'),
    @('nnv2_rpg_location', 'Location System', 'RPGSystem_Location', 'RPGSystem_LocationName', 'Location', 'Track zones, routes, landmarks, hazards, exits, controlled areas, known paths, hidden spaces, and travel friction. Location should shape tactics and social access.')
)
foreach ($m in $rpgModules) {
    Add-Module -Id $m[0] -Name $m[1] -Category 'RPG Systems' -Tooltip "$($m[1]) module." -Color '#884EA0' -Badge 'RPG' -Var $m[2] -NameVar $m[3] -Label $m[4] -Body "♢ >> [PROCEDURE] $($m[1])`r`n$($m[5])"
}

Add-Section -Id 'nnv2_nsfw_mechanics_hdr' -Name '=== NSFW Mechanics And Styles ===' -Category 'NSFW' -Tooltip 'Optional erotic-scene mechanics and style controls.' -Color '#C0392B' -Badge 'NSFW'
$nsfwModules = @(
    @('nnv2_nsfw_mishaps', 'Erotic Mishaps', 'NSFWMechanic_Mishaps', 'NSFWMechanic_MishapsName', 'Mishaps', 'Erotic scenes can include awkward logistics, slipping, bad angles, laughter, discomfort, interruptions, premature orgasm, soreness, bodily mess, cleanup, negotiation, and correction when it fits character and tone.'),
    @('nnv2_nsfw_slow_burn', 'Erotic Slow Burn', 'NSFWMechanic_SlowBurn', 'NSFWMechanic_SlowBurnName', 'Slow Burn', 'Build erotic pressure through proximity, denial, teasing, interrupted chances, charged ordinary contact, private knowledge, fantasy, jealousy, restraint, and delayed payoff.'),
    @('nnv2_nsfw_accelerator', 'Erotic Accelerator', 'NSFWMechanic_Accelerator', 'NSFWMechanic_AcceleratorName', 'Accelerator', 'When the scene calls for fast escalation, move desire into action decisively: contact, stripping, positioning, dirty talk, penetration, oral, toys, or kink without polite delay.'),
    @('nnv2_nsfw_anti_horny', 'Anti-Horny Logic', 'NSFWMechanic_AntiHorny', 'NSFWMechanic_AntiHornyName', 'Anti-Horny', 'Sexual opportunity can fail, stall, turn awkward, be refused, be interrupted, or redirect into conflict when character, context, danger, fatigue, disgust, fear, or timing makes that likely.'),
    @('nnv2_nsfw_scene_duration', 'Erotic Scene Duration', 'NSFWMechanic_SceneDuration', 'NSFWMechanic_SceneDurationName', 'Scene Duration', 'Let erotic scenes last long enough for desire, mechanics, rhythm changes, orgasm, and aftermath to land. Do not rush to climax unless the scene logic demands speed.'),
    @('nnv2_nsfw_character_initiative', 'Erotic Character Initiative', 'NSFWMechanic_CharacterInitiative', 'NSFWMechanic_CharacterInitiativeName', 'Character Initiative', 'Erotic participants initiate according to personality: tease, demand, refuse, guide, pin, ride, kneel, switch position, set limits, chase orgasm, or change the pace.'),
    @('nnv2_nsfw_unhinged_mode', 'Unhinged Erotic Mode', 'NSFWMechanic_UnhingedMode', 'NSFWMechanic_UnhingedModeName', 'Unhinged', 'For deliberately wild erotic scenes, allow messy escalation, intense dirty talk, extreme fixation, chaotic positioning, aggressive pursuit, and stylized excess while preserving consent scope, character logic, and spatial clarity.'),
    @('nnv2_nsfw_chaos_factor', 'Erotic Chaos Factor', 'NSFWMechanic_ChaosFactor', 'NSFWMechanic_ChaosFactorName', 'Chaos Factor', 'Add unpredictable erotic complications when useful: noise, interruptions, unexpected arousal, jealousy, wardrobe failure, rival attention, magical effects, bad timing, or an NPC choosing a bolder move.'),
    @('nnv2_nsfw_physical_grounding', 'Erotic Physical Grounding', 'NSFWMechanic_PhysicalGrounding', 'NSFWMechanic_PhysicalGroundingName', 'Physical Grounding', 'Track bodies, angles, hands, mouths, balance, clothes, fluids, breath, soreness, friction, and cleanup. The reader should understand the physical situation at each escalation.')
)
foreach ($m in $nsfwModules) {
    Add-Module -Id $m[0] -Name $m[1] -Category 'NSFW' -Tooltip "$($m[1]) module." -Color '#C0392B' -Badge 'NSFW' -Var $m[2] -NameVar $m[3] -Label $m[4] -Body "♢ ! [DIRECTIVE] $($m[1])`r`n$($m[5])"
}

$nsfwStyles = @(
    @('nnv2_nsfw_style_realistic', 'Realistic Smut Style', 'NSFWStyle_Realistic', 'NSFWStyle_RealisticName', 'Realistic Smut', 'Write erotic scenes with practical bodies, consent dynamics, awkwardness, arousal physiology, negotiation, fatigue, cleanup, soreness, and emotional aftermath.'),
    @('nnv2_nsfw_style_hentai', 'Hentai Smut Style', 'NSFWStyle_Hentai', 'NSFWStyle_HentaiName', 'Hentai Smut', 'Use stylized erotic escalation, explicit anatomy, exaggerated sounds, visible mechanics, intense reactions, position changes, and genre-forward arousal while keeping action spatially clear.'),
    @('nnv2_nsfw_style_romantic', 'Romantic Smut Style', 'NSFWStyle_Romantic', 'NSFWStyle_RomanticName', 'Romantic Smut', 'Center desire, affection, emotional risk, praise, touch, eye contact, tenderness, vulnerability, aftercare, and changed intimacy while still naming anatomy directly when the scene is explicit.'),
    @('nnv2_nsfw_style_pornographic', 'Pornographic Smut Style', 'NSFWStyle_Pornographic', 'NSFWStyle_PornographicName', 'Pornographic Smut', 'Prioritize explicit sexual action, anatomy, position, pace, dirty talk, arousal, orgasm, fluids, and visual mechanics. Keep character agency active and avoid euphemism drift.')
)
foreach ($m in $nsfwStyles) {
    Add-Module -Id $m[0] -Name $m[1] -Category 'NSFW' -Tooltip "$($m[1]) module." -Color '#C0392B' -Badge 'NSFW' -Var $m[2] -NameVar $m[3] -Label $m[4] -Body "♢ * [STYLE] $($m[1])`r`n$($m[5])"
}
Add-Module -Id 'nnv2_fetish_cnc' -Name 'Fetish: CNC' -Category 'Fetish' -Tooltip 'Consensual non-consent fetish module.' -Color '#922B21' -Badge 'FETISH' -Var 'FetishCNC' -NameVar 'CNCName' -Label 'CNC' -Body @'
♢ !! [LAW] Consensual Non-Consent Fetish
CNC is negotiated roleplay inside the fiction unless canon establishes a different dark-fiction frame through the active consent permissions. Emphasize agreed roles, chosen helplessness, force fantasy, resistance performance, safewords or equivalent signals when relevant, aftercare, and the thrill of controlled danger. Keep the scene explicit, physical, and character-specific.
'@

Add-Section -Id 'nnv2_expanded_trackers_hdr' -Name '=== Expanded Trackers ===' -Category 'Trackers' -Tooltip 'Additional tracker toggles restored for NemoNet scale.' -Color '#8E44AD' -Badge 'TRACKER'
Add-Tracker -Id 'nnv2_tracker_objective_tracker' -Name 'Objective Tracker Toggle' -Tooltip 'Enables objective tracker status.' -TrackerVar 'TrackerActive_ObjectiveTracker'
Add-Tracker -Id 'nnv2_tracker_story_tracker' -Name 'Story Tracker Toggle' -Tooltip 'Enables story tracker status.' -TrackerVar 'TrackerActive_StoryTracker'
Add-Tracker -Id 'nnv2_tracker_story_ledger' -Name 'Story Ledger Toggle' -Tooltip 'Enables story ledger status.' -TrackerVar 'TrackerActive_StoryLedger'
Add-Tracker -Id 'nnv2_tracker_scene_status' -Name 'Scene Status Toggle' -Tooltip 'Enables scene status tracker.' -TrackerVar 'TrackerActive_SceneStatus'
Add-Tracker -Id 'nnv2_tracker_heart_chart' -Name 'Heart Chart Toggle' -Tooltip 'Enables relationship heart chart tracker.' -TrackerVar 'TrackerActive_HeartChart'
Add-Tracker -Id 'nnv2_tracker_visual_inventory' -Name 'Visual Inventory Toggle' -Tooltip 'Enables visual inventory tracker.' -TrackerVar 'TrackerActive_VisualInventory'
Add-Tracker -Id 'nnv2_tracker_texting_style' -Name 'Texting Style Toggle' -Tooltip 'Enables texting style tracker.' -TrackerVar 'TrackerActive_TextingStyle'
Add-Tracker -Id 'nnv2_tracker_parallel_events' -Name 'Parallel Events Toggle' -Tooltip 'Enables parallel events tracker.' -TrackerVar 'TrackerActive_ParallelEvents'

$realismVars = @('Realism_PhysicalBody', 'Realism_ViolenceCombat', 'Realism_Psychological', 'Realism_SocialConsequence', 'Realism_SurvivalLogistics', 'Realism_Environmental', 'Realism_AuthenticReactions', 'Realism_Manipulation', 'Realism_EconomicReality', 'Realism_SkillLimitations')
$characterVars = @('CharacterSystem_Growth', 'CharacterSystem_EmotionalRealism', 'CharacterSystem_Memory', 'CharacterSystem_RelationshipDynamics', 'CharacterSystem_TraumaGuards', 'CharacterSystem_FlawFirst', 'CharacterSystem_MirrorMoment', 'CharacterSystem_SoftSpotRadar', 'CharacterSystem_EvolvingMemento', 'CharacterSystem_UnreliableLens', 'CharacterSystem_FoundFamily', 'CharacterSystem_OCEAN', 'CharacterSystem_AnthroSpecies', 'CharacterSystem_BrokenPsyche')
$plotVars = @('PlotTool_FocusLock', 'PlotTool_BranchingPaths', 'PlotTool_CliffhangerEndings', 'PlotTool_QuietMoments', 'PlotTool_MysteryUnraveling', 'PlotTool_ArcProgression', 'PlotTool_IgnoredConsequences', 'PlotTool_DirectActionStart', 'PlotTool_SwipeEnhancer', 'PlotTool_ParallelArcs')
$worldVars = @('WorldSystem_LivingWorld', 'WorldSystem_NPCAgency', 'WorldSystem_NPCHyperAgency', 'WorldSystem_BackgroundAtmosphere', 'WorldSystem_Reputation', 'WorldSystem_Continuity', 'WorldSystem_NPCRelationships', 'WorldSystem_DripFeedLore', 'WorldSystem_ProactiveNPCs')
$dialogueVars = @('DialogueMode_Minimal', 'DialogueMode_Balanced', 'DialogueMode_Heavy', 'DialogueMode_Pure', 'DialogueMode_SceneRatios', 'DialogueMode_CasualSlang', 'DialogueMode_FormalRegister', 'DialogueMode_Hardboiled', 'DialogueMode_NoTags', 'DialogueMode_RapidFire', 'DialogueMode_SparseMinimalist', 'DialogueMode_Theatrical', 'DialogueMode_WittyBanter')
$formatVars = @('FormattingMode_ColoredThoughts', 'FormattingMode_SoundEffects', 'FormattingMode_TextTransforms', 'FormattingMode_InWorldText', 'FormattingMode_EmotionalEffects', 'FormattingMode_SceneBreaks', 'FormattingMode_ExpressionBursts', 'FormattingMode_InternalMonologue', 'FormattingMode_DramaticPauses', 'FormattingMode_GlitchText')
$sensoryVars = @('SensoryMode_FullImmersion', 'SensoryMode_Visual', 'SensoryMode_Auditory', 'SensoryMode_Tactile', 'SensoryMode_Olfactory', 'SensoryMode_Thermal', 'SensoryMode_Proprioceptive', 'SensoryMode_Memory', 'SensoryMode_Deprivation', 'SensoryMode_Atmospheric')
$rpgVars = @('RPGSystem_Survival', 'RPGSystem_Quest', 'RPGSystem_Reputation', 'RPGSystem_Consequence', 'RPGSystem_PowerProgression', 'RPGSystem_Morality', 'RPGSystem_SocialManipulation', 'RPGSystem_EnsembleCast', 'RPGSystem_MysteryClues', 'RPGSystem_Crafting', 'RPGSystem_Time', 'RPGSystem_Location')
$metaVars = @('Utility_SudoCommands', 'Utility_OOCCommunication', 'Utility_WhatIfGlimpses', 'Utility_CharacterThoughts', 'Utility_ContentWarnings', 'Utility_SessionRecords', 'Utility_SpoilerTags', 'Utility_FinaleSequence', 'Utility_VexSidebar')
$nsfwMechanicVars = @('NSFWMechanic_Mishaps', 'NSFWMechanic_SlowBurn', 'NSFWMechanic_Accelerator', 'NSFWMechanic_AntiHorny', 'NSFWMechanic_SceneDuration', 'NSFWMechanic_CharacterInitiative', 'NSFWMechanic_UnhingedMode', 'NSFWMechanic_ChaosFactor', 'NSFWMechanic_PhysicalGrounding', 'NSFWStyle_Realistic', 'NSFWStyle_Hentai', 'NSFWStyle_Romantic', 'NSFWStyle_Pornographic')
$newTrackerVars = @('TrackerActive_ObjectiveTracker', 'TrackerActive_StoryTracker', 'TrackerActive_StoryLedger', 'TrackerActive_SceneStatus', 'TrackerActive_HeartChart', 'TrackerActive_VisualInventory', 'TrackerActive_TextingStyle', 'TrackerActive_ParallelEvents')

$corePack = Get-Prompt '1770095491834-1h31rrcp'
$content = $corePack.content
$content = Insert-AfterOnce -Content $content -Anchor '{{getvar::CharacterDevelopment}}' -Insert (New-GetBlock $characterVars) -Sentinel '{{getvar::CharacterSystem_Growth}}'
$content = Insert-AfterOnce -Content $content -Anchor '{{getvar::DialogueDynamics}}' -Insert (New-GetBlock $dialogueVars) -Sentinel '{{getvar::DialogueMode_Minimal}}'
$content = Insert-AfterOnce -Content $content -Anchor '{{getvar::WritingFormat}}' -Insert (New-GetBlock $formatVars) -Sentinel '{{getvar::FormattingMode_ColoredThoughts}}'
$content = Insert-AfterOnce -Content $content -Anchor '{{getvar::Difficulty}}' -Insert (New-GetBlock $realismVars) -Sentinel '{{getvar::Realism_PhysicalBody}}'
$content = Insert-AfterOnce -Content $content -Anchor '{{getvar::PlotPacing}}' -Insert (New-GetBlock $plotVars) -Sentinel '{{getvar::PlotTool_FocusLock}}'
$content = Insert-AfterOnce -Content $content -Anchor '{{getvar::WorldAugment_PhysiologicalRealism}}' -Insert (New-GetBlock $worldVars) -Sentinel '{{getvar::WorldSystem_LivingWorld}}'
$content = Insert-AfterOnce -Content $content -Anchor '{{getvar::GoonerProtocol}}' -Insert (New-GetBlock $nsfwMechanicVars) -Sentinel '{{getvar::NSFWMechanic_Mishaps}}'
$content = Insert-AfterOnce -Content $content -Anchor '{{getvar::FetishOviposition}}' -Insert '{{getvar::FetishCNC}}' -Sentinel '{{getvar::FetishCNC}}'
$content = Insert-AfterOnce -Content $content -Anchor '{{// RPG }}' -Insert (New-GetBlock $rpgVars) -Sentinel '{{getvar::RPGSystem_Survival}}'
$content = Insert-AfterOnce -Content $content -Anchor '{{getvar::RPMarkdownFormat}}' -Insert (New-GetBlock $metaVars) -Sentinel '{{getvar::Utility_SudoCommands}}'
$content = Insert-AfterOnce -Content $content -Anchor '♢ ! [DIRECTIVE] Sensory' -Insert (New-GetBlock $sensoryVars) -Sentinel '{{getvar::SensoryMode_FullImmersion}}'
$corePack.content = $content

$trackerToggle = Get-Prompt '3499e906-80f1-4016-9679-6fef4aac10f4'
if (-not $trackerToggle.content.Contains('{{getvar::TrackerActive_ObjectiveTracker}}')) {
    $old = '{{getvar::TrackerActive_WordCount}}'
    $extra = ' ' + (New-GetBlock $newTrackerVars).Replace("`r`n", ' ')
    $trackerToggle.content = $trackerToggle.content.Replace($old, $old + $extra)
}

$varInit = Get-Prompt '1770095491833-esf8iriq'
$varStart = '{{// === NEMONET V1 SCALE MODULES === }}'
$varEnd = '{{// === END NEMONET V1 SCALE MODULES === }}'
$varInit.content = Remove-MarkedBlock -Content $varInit.content -StartMarker $varStart -EndMarker $varEnd

$extraExistingVars = @(
    'NSFWIntensityName', 'NSFWIntensity',
    'BreedingName', 'FetishBreeding', 'SizePlayName', 'FetishSizePlay', 'CorruptionName', 'FetishCorruption',
    'ExhibitionismName', 'FetishExhibitionism', 'VoyeurismName', 'FetishVoyeurism', 'MonsterName', 'FetishMonster',
    'TentaclesName', 'FetishTentacles', 'LactationName', 'FetishLactation', 'ImpregnationName', 'FetishImpregnation',
    'SomnophiliaName', 'FetishSomnophilia', 'AgeGapName', 'FetishAgeGap', 'GroupSexName', 'FetishGroupSex',
    'OralFocusName', 'FetishOralFocus', 'AnalFocusName', 'FetishAnalFocus', 'TabooRelationsName', 'FetishTabooRelations',
    'MaledomName', 'FetishMaledom', 'BDSMName', 'FetishBDSM', 'MindControlName', 'FetishMindControl',
    'OrgasmControlName', 'FetishOrgasmControl', 'HumiliationName', 'FetishHumiliation', 'BondageName', 'FetishBondage',
    'ImpactPlayName', 'FetishImpactPlay', 'FreeUseName', 'FetishFreeUse', 'HentaiToolsName', 'FetishHentaiTools',
    'VoreName', 'FetishVore', 'OvipositionName', 'FetishOviposition',
    'CoTStep_SeverityScaleName', 'CoTStep_SeverityScale', 'CoTStep_FreshnessCheckName', 'CoTStep_FreshnessCheck',
    'CoTStep_ObserverConstraintsName', 'CoTStep_ObserverConstraints', 'CoTStep_ThreadBudgetName', 'CoTStep_ThreadBudget',
    'CoTStep_GMPlanningName', 'CoTStep_GMPlanning', 'CoTStep_DiceFateName', 'CoTStep_DiceFate',
    'TrackerActive_Danmaku', 'TrackerActive_BloodBond', 'TrackerActive_CorruptionMeter', 'TrackerActive_OptionBar',
    'TrackerActive_GameInterface', 'TrackerActive_SummarySystem', 'TrackerActive_WordCount'
)
$allNewContentVars = @($realismVars + $characterVars + $plotVars + $worldVars + $dialogueVars + $formatVars + $sensoryVars + $rpgVars + $metaVars + $nsfwMechanicVars + @('FetishCNC') + $newTrackerVars)
$allNewNameVars = @(
    'Realism_PhysicalBodyName', 'Realism_ViolenceCombatName', 'Realism_PsychologicalName', 'Realism_SocialConsequenceName', 'Realism_SurvivalLogisticsName', 'Realism_EnvironmentalName', 'Realism_AuthenticReactionsName', 'Realism_ManipulationName', 'Realism_EconomicRealityName', 'Realism_SkillLimitationsName',
    'CharacterSystem_GrowthName', 'CharacterSystem_EmotionalRealismName', 'CharacterSystem_MemoryName', 'CharacterSystem_RelationshipDynamicsName', 'CharacterSystem_TraumaGuardsName', 'CharacterSystem_FlawFirstName', 'CharacterSystem_MirrorMomentName', 'CharacterSystem_SoftSpotRadarName', 'CharacterSystem_EvolvingMementoName', 'CharacterSystem_UnreliableLensName', 'CharacterSystem_FoundFamilyName', 'CharacterSystem_OCEANName', 'CharacterSystem_AnthroSpeciesName', 'CharacterSystem_BrokenPsycheName',
    'PlotTool_FocusLockName', 'PlotTool_BranchingPathsName', 'PlotTool_CliffhangerEndingsName', 'PlotTool_QuietMomentsName', 'PlotTool_MysteryUnravelingName', 'PlotTool_ArcProgressionName', 'PlotTool_IgnoredConsequencesName', 'PlotTool_DirectActionStartName', 'PlotTool_SwipeEnhancerName', 'PlotTool_ParallelArcsName',
    'WorldSystem_LivingWorldName', 'WorldSystem_NPCAgencyName', 'WorldSystem_NPCHyperAgencyName', 'WorldSystem_BackgroundAtmosphereName', 'WorldSystem_ReputationName', 'WorldSystem_ContinuityName', 'WorldSystem_NPCRelationshipsName', 'WorldSystem_DripFeedLoreName', 'WorldSystem_ProactiveNPCsName',
    'DialogueMode_MinimalName', 'DialogueMode_BalancedName', 'DialogueMode_HeavyName', 'DialogueMode_PureName', 'DialogueMode_SceneRatiosName', 'DialogueMode_CasualSlangName', 'DialogueMode_FormalRegisterName', 'DialogueMode_HardboiledName', 'DialogueMode_NoTagsName', 'DialogueMode_RapidFireName', 'DialogueMode_SparseMinimalistName', 'DialogueMode_TheatricalName', 'DialogueMode_WittyBanterName',
    'FormattingMode_ColoredThoughtsName', 'FormattingMode_SoundEffectsName', 'FormattingMode_TextTransformsName', 'FormattingMode_InWorldTextName', 'FormattingMode_EmotionalEffectsName', 'FormattingMode_SceneBreaksName', 'FormattingMode_ExpressionBurstsName', 'FormattingMode_InternalMonologueName', 'FormattingMode_DramaticPausesName', 'FormattingMode_GlitchTextName',
    'SensoryMode_FullImmersionName', 'SensoryMode_VisualName', 'SensoryMode_AuditoryName', 'SensoryMode_TactileName', 'SensoryMode_OlfactoryName', 'SensoryMode_ThermalName', 'SensoryMode_ProprioceptiveName', 'SensoryMode_MemoryName', 'SensoryMode_DeprivationName', 'SensoryMode_AtmosphericName',
    'RPGSystem_SurvivalName', 'RPGSystem_QuestName', 'RPGSystem_ReputationName', 'RPGSystem_ConsequenceName', 'RPGSystem_PowerProgressionName', 'RPGSystem_MoralityName', 'RPGSystem_SocialManipulationName', 'RPGSystem_EnsembleCastName', 'RPGSystem_MysteryCluesName', 'RPGSystem_CraftingName', 'RPGSystem_TimeName', 'RPGSystem_LocationName',
    'Utility_SudoCommandsName', 'Utility_OOCCommunicationName', 'Utility_WhatIfGlimpsesName', 'Utility_CharacterThoughtsName', 'Utility_ContentWarningsName', 'Utility_SessionRecordsName', 'Utility_SpoilerTagsName', 'Utility_FinaleSequenceName', 'Utility_VexSidebarName',
    'NSFWMechanic_MishapsName', 'NSFWMechanic_SlowBurnName', 'NSFWMechanic_AcceleratorName', 'NSFWMechanic_AntiHornyName', 'NSFWMechanic_SceneDurationName', 'NSFWMechanic_CharacterInitiativeName', 'NSFWMechanic_UnhingedModeName', 'NSFWMechanic_ChaosFactorName', 'NSFWMechanic_PhysicalGroundingName', 'NSFWStyle_RealisticName', 'NSFWStyle_HentaiName', 'NSFWStyle_RomanticName', 'NSFWStyle_PornographicName',
    'CNCName'
)

$resetLines = New-Object System.Collections.Generic.List[string]
$resetLines.Add($varStart)
foreach ($var in @($extraExistingVars + $allNewNameVars + $allNewContentVars)) {
    $resetLines.Add("{{setvar::$var::}}")
}
$resetLines.Add($varEnd)
$varInit.content = $varInit.content.TrimEnd() + "`r`n" + ($resetLines -join "`r`n") + "`r`n"

$settingsSections = [ordered]@{
    Core = @(
        @('Vex_Persona', 'VexPersona'), @('CoT_Style', 'CoTName'), @('Genre', 'GenreName'), @('Writing_Style', 'WritingStyleName'), @('Writing_Format', 'WritingFormatName'), @('World_Logic', 'WorldLogicName'), @('Archetype_Engine', 'ArchetypeEngineName'), @('RPG', 'RPGName'), @('World_Physics', 'WorldPhysicsName')
    )
    Narrative = @(
        @('Difficulty', 'DifficultyName'), @('Perspective', 'PerspectiveName'), @('Response_Length', 'ResponseLengthName'), @('Tense', 'TenseName'), @('Plot_Pacing', 'PlotPacingName'), @('Story_Agency', 'StoryAgencyName')
    )
    CoT_Extra_Steps = @(
        @('Severity_Scale', 'CoTStep_SeverityScaleName'), @('Freshness_Check', 'CoTStep_FreshnessCheckName'), @('Observer_Constraints', 'CoTStep_ObserverConstraintsName'), @('Thread_Budget', 'CoTStep_ThreadBudgetName'), @('GM_Planning', 'CoTStep_GMPlanningName'), @('Dice_Fate', 'CoTStep_DiceFateName')
    )
    Realism = @(
        @('Physical_Body', 'Realism_PhysicalBodyName'), @('Violence_Combat', 'Realism_ViolenceCombatName'), @('Psychological', 'Realism_PsychologicalName'), @('Social_Consequence', 'Realism_SocialConsequenceName'), @('Survival_Logistics', 'Realism_SurvivalLogisticsName'), @('Environmental', 'Realism_EnvironmentalName'), @('Authentic_Reactions', 'Realism_AuthenticReactionsName'), @('Manipulation', 'Realism_ManipulationName'), @('Economic_Reality', 'Realism_EconomicRealityName'), @('Skill_Limitations', 'Realism_SkillLimitationsName')
    )
    Character_Systems = @(
        @('Growth', 'CharacterSystem_GrowthName'), @('Emotional_Realism', 'CharacterSystem_EmotionalRealismName'), @('Memory', 'CharacterSystem_MemoryName'), @('Relationship_Dynamics', 'CharacterSystem_RelationshipDynamicsName'), @('Trauma_Guards', 'CharacterSystem_TraumaGuardsName'), @('Flaw_First', 'CharacterSystem_FlawFirstName'), @('Mirror_Moment', 'CharacterSystem_MirrorMomentName'), @('Soft_Spot_Radar', 'CharacterSystem_SoftSpotRadarName'), @('Evolving_Memento', 'CharacterSystem_EvolvingMementoName'), @('Unreliable_Lens', 'CharacterSystem_UnreliableLensName'), @('Found_Family', 'CharacterSystem_FoundFamilyName'), @('OCEAN', 'CharacterSystem_OCEANName'), @('Species_Traits', 'CharacterSystem_AnthroSpeciesName'), @('Broken_Psyche', 'CharacterSystem_BrokenPsycheName')
    )
    Plot_Tools = @(
        @('Focus_Lock', 'PlotTool_FocusLockName'), @('Branching_Paths', 'PlotTool_BranchingPathsName'), @('Cliffhanger_Endings', 'PlotTool_CliffhangerEndingsName'), @('Quiet_Moments', 'PlotTool_QuietMomentsName'), @('Mystery_Unraveling', 'PlotTool_MysteryUnravelingName'), @('Arc_Progression', 'PlotTool_ArcProgressionName'), @('Ignored_Consequences', 'PlotTool_IgnoredConsequencesName'), @('Direct_Action_Start', 'PlotTool_DirectActionStartName'), @('Swipe_Enhancer', 'PlotTool_SwipeEnhancerName'), @('Parallel_Arcs', 'PlotTool_ParallelArcsName')
    )
    World_Systems = @(
        @('Living_World', 'WorldSystem_LivingWorldName'), @('NPC_Agency', 'WorldSystem_NPCAgencyName'), @('NPC_Hyper_Agency', 'WorldSystem_NPCHyperAgencyName'), @('Background_Atmosphere', 'WorldSystem_BackgroundAtmosphereName'), @('Reputation', 'WorldSystem_ReputationName'), @('Continuity', 'WorldSystem_ContinuityName'), @('NPC_Relationships', 'WorldSystem_NPCRelationshipsName'), @('Drip_Feed_Lore', 'WorldSystem_DripFeedLoreName'), @('Proactive_NPC_World', 'WorldSystem_ProactiveNPCsName')
    )
    Dialogue_Modes = @(
        @('Minimal', 'DialogueMode_MinimalName'), @('Balanced', 'DialogueMode_BalancedName'), @('Heavy', 'DialogueMode_HeavyName'), @('Pure', 'DialogueMode_PureName'), @('Scene_Ratios', 'DialogueMode_SceneRatiosName'), @('Casual_Slang', 'DialogueMode_CasualSlangName'), @('Formal_Register', 'DialogueMode_FormalRegisterName'), @('Hardboiled', 'DialogueMode_HardboiledName'), @('No_Tags', 'DialogueMode_NoTagsName'), @('Rapid_Fire', 'DialogueMode_RapidFireName'), @('Sparse_Minimalist', 'DialogueMode_SparseMinimalistName'), @('Theatrical', 'DialogueMode_TheatricalName'), @('Witty_Banter', 'DialogueMode_WittyBanterName')
    )
    Formatting = @(
        @('Colored_Thoughts', 'FormattingMode_ColoredThoughtsName'), @('Sound_Effects', 'FormattingMode_SoundEffectsName'), @('Text_Transforms', 'FormattingMode_TextTransformsName'), @('In_World_Text', 'FormattingMode_InWorldTextName'), @('Emotional_Effects', 'FormattingMode_EmotionalEffectsName'), @('Scene_Breaks', 'FormattingMode_SceneBreaksName'), @('Expression_Bursts', 'FormattingMode_ExpressionBurstsName'), @('Internal_Monologue', 'FormattingMode_InternalMonologueName'), @('Dramatic_Pauses', 'FormattingMode_DramaticPausesName'), @('Glitch_Text', 'FormattingMode_GlitchTextName')
    )
    Sensory = @(
        @('Full_Immersion', 'SensoryMode_FullImmersionName'), @('Visual', 'SensoryMode_VisualName'), @('Auditory', 'SensoryMode_AuditoryName'), @('Tactile', 'SensoryMode_TactileName'), @('Smell_Taste', 'SensoryMode_OlfactoryName'), @('Thermal', 'SensoryMode_ThermalName'), @('Proprioception', 'SensoryMode_ProprioceptiveName'), @('Memory_Echoes', 'SensoryMode_MemoryName'), @('Deprivation', 'SensoryMode_DeprivationName'), @('Atmospheric', 'SensoryMode_AtmosphericName')
    )
    RPG_Systems = @(
        @('Survival', 'RPGSystem_SurvivalName'), @('Quest', 'RPGSystem_QuestName'), @('Reputation', 'RPGSystem_ReputationName'), @('Consequence', 'RPGSystem_ConsequenceName'), @('Power_Progression', 'RPGSystem_PowerProgressionName'), @('Morality', 'RPGSystem_MoralityName'), @('Social_Manipulation', 'RPGSystem_SocialManipulationName'), @('Ensemble_Cast', 'RPGSystem_EnsembleCastName'), @('Mystery_Clues', 'RPGSystem_MysteryCluesName'), @('Crafting', 'RPGSystem_CraftingName'), @('Time', 'RPGSystem_TimeName'), @('Location', 'RPGSystem_LocationName')
    )
    Meta_Utilities = @(
        @('Sudo_Commands', 'Utility_SudoCommandsName'), @('OOC_Communication', 'Utility_OOCCommunicationName'), @('What_If_Glimpses', 'Utility_WhatIfGlimpsesName'), @('Character_Thoughts', 'Utility_CharacterThoughtsName'), @('Content_Warnings', 'Utility_ContentWarningsName'), @('Session_Records', 'Utility_SessionRecordsName'), @('Spoiler_Tags', 'Utility_SpoilerTagsName'), @('Finale_Sequence', 'Utility_FinaleSequenceName'), @('Vex_Sidebar', 'Utility_VexSidebarName')
    )
    Utility = @(
        @('Danger_Protocol', 'DangerProtocolName'), @('Character_Naming', 'NPCNamingName'), @('Proactive_Characters', 'ProactiveNPCsName'), @('Character_Friction', 'NPCFrictionName'), @('RP_Markdown', 'RPMarkdownName'), @('More_Dialogue', 'MoreDialogueName'), @('Random_Author', 'RandomAuthorName'), @('Parallel_Storylines', 'ParallelStorylinesName'), @('Auto_Image_Gen', 'ImageGenName'), @('Narration_Language', 'Language'), @('Thinking_Language', 'ThinkingLanguage'), @('Tracker_Format', 'TrackerRenderMode'), @('Tracker_Theme', 'TrackerThemeName'), @('Vex_Commentary', 'VexCommentaryName')
    )
    NSFW = @(
        @('NSFW_Core', 'NSFWName'), @('NSFW_Intensity', 'NSFWIntensityName'), @('Dirty_Talk', 'DirtyTalkName'), @('Moans_SFX', 'MoansSFXName'), @('Proactive_Partners', 'ProactiveSexName'), @('Sexual_Physiology', 'SexPhysiologyName'), @('Realistic_Smut', 'RealisticSmutName'), @('Dom_Language', 'DomLanguageName'), @('Porn_Tropes', 'PornTropesName'), @('Gooner_Protocol', 'GoonerProtocolName')
    )
    NSFW_Mechanics_And_Styles = @(
        @('Mishaps', 'NSFWMechanic_MishapsName'), @('Slow_Burn', 'NSFWMechanic_SlowBurnName'), @('Accelerator', 'NSFWMechanic_AcceleratorName'), @('Anti_Horny', 'NSFWMechanic_AntiHornyName'), @('Scene_Duration', 'NSFWMechanic_SceneDurationName'), @('Character_Initiative', 'NSFWMechanic_CharacterInitiativeName'), @('Unhinged_Mode', 'NSFWMechanic_UnhingedModeName'), @('Chaos_Factor', 'NSFWMechanic_ChaosFactorName'), @('Physical_Grounding', 'NSFWMechanic_PhysicalGroundingName'), @('Realistic_Style', 'NSFWStyle_RealisticName'), @('Hentai_Style', 'NSFWStyle_HentaiName'), @('Romantic_Style', 'NSFWStyle_RomanticName'), @('Pornographic_Style', 'NSFWStyle_PornographicName')
    )
    Fetish = @(
        @('Femdom', 'FemdomName'), @('Harem', 'HaremName'), @('NTR', 'NTRName'), @('Netori', 'NetoriName'), @('Feminization', 'FeminizationName'), @('Furry', 'FurryName'), @('Petplay', 'PetplayName'), @('Foot_Fetish', 'FootFetishName'), @('NonCon', 'NonConName'), @('CBT', 'CBTName'), @('Breeding', 'BreedingName'), @('Size_Play', 'SizePlayName'), @('Corruption', 'CorruptionName'), @('Exhibitionism', 'ExhibitionismName'), @('Voyeurism', 'VoyeurismName'), @('Monster', 'MonsterName'), @('Tentacles', 'TentaclesName'), @('Lactation', 'LactationName'), @('Impregnation', 'ImpregnationName'), @('Somnophilia', 'SomnophiliaName'), @('Age_Gap', 'AgeGapName'), @('Group_Sex', 'GroupSexName'), @('Oral_Focus', 'OralFocusName'), @('Anal_Focus', 'AnalFocusName'), @('Taboo_Relations', 'TabooRelationsName'), @('Maledom', 'MaledomName'), @('BDSM', 'BDSMName'), @('Mind_Control', 'MindControlName'), @('Orgasm_Control', 'OrgasmControlName'), @('Humiliation', 'HumiliationName'), @('Bondage', 'BondageName'), @('Impact_Play', 'ImpactPlayName'), @('Free_Use', 'FreeUseName'), @('Hentai_Tools', 'HentaiToolsName'), @('Vore', 'VoreName'), @('Oviposition', 'OvipositionName'), @('CNC', 'CNCName')
    )
    Trackers = @(
        @('DatingSim', 'TrackerActive_DatingSim'), @('Inventory', 'TrackerActive_Inventory'), @('StatusBoard', 'TrackerActive_StatusBoard'), @('Position', 'TrackerActive_Position'), @('LocationBoard', 'TrackerActive_LocationBoard'), @('CharacterSheet', 'TrackerActive_CharacterSheet'), @('QuestJournal', 'TrackerActive_QuestJournal'), @('Gacha', 'TrackerActive_Gacha'), @('ScrollNews', 'TrackerActive_ScrollNews'), @('WorldAnvil', 'TrackerActive_WorldAnvil'), @('FandomReaction', 'TrackerActive_FandomReaction'), @('CYOA', 'TrackerActive_CYOA'), @('KnowledgeLog', 'TrackerActive_KnowledgeLog'), @('VexPlanning', 'TrackerActive_VexPlanning'), @('MangaPanels', 'TrackerActive_MangaPanels'), @('WebtoonPanels', 'TrackerActive_WebtoonPanels'), @('Danmaku', 'TrackerActive_Danmaku'), @('BloodBond', 'TrackerActive_BloodBond'), @('CorruptionMeter', 'TrackerActive_CorruptionMeter'), @('OptionBar', 'TrackerActive_OptionBar'), @('GameInterface', 'TrackerActive_GameInterface'), @('SummarySystem', 'TrackerActive_SummarySystem'), @('WordCount', 'TrackerActive_WordCount'), @('ObjectiveTracker', 'TrackerActive_ObjectiveTracker'), @('StoryTracker', 'TrackerActive_StoryTracker'), @('StoryLedger', 'TrackerActive_StoryLedger'), @('SceneStatus', 'TrackerActive_SceneStatus'), @('HeartChart', 'TrackerActive_HeartChart'), @('VisualInventory', 'TrackerActive_VisualInventory'), @('TextingStyle', 'TrackerActive_TextingStyle'), @('ParallelEvents', 'TrackerActive_ParallelEvents')
    )
    World_Augments = @(
        @('Aura_Emotions', 'WorldAugment_AuraEmotionsName'), @('Bustling_Environment', 'WorldAugment_BustlingEnvironmentName'), @('Dreamscape_Reality', 'WorldAugment_DreamscapeRealityName'), @('Honesty_Plague', 'WorldAugment_HonestyPlagueName'), @('Prophecy_Magnet', 'WorldAugment_ProphecyMagnetName'), @('Slow_Burn_Mysteries', 'WorldAugment_SlowBurnMysteriesName'), @('Monster_Threat', 'WorldAugment_MonsterThreatName'), @('Dungeon_Delve', 'WorldAugment_DungeonDelveName'), @('Environmental_Descriptions', 'WorldAugment_EnvironmentalDescriptionsName'), @('Sentient_Objects', 'WorldAugment_SentientObjectsName'), @('Foreigner_User', 'WorldAugment_ForeignerName'), @('Gynocentric_Society', 'WorldAugment_GynocentricSocietyName'), @('Physiological_Realism', 'WorldAugment_PhysiologicalRealismName')
    )
    Content_Permissions = @(
        @('User_Consent', 'UnrestrictedName'), @('Consent_Acknowledged', 'ConsentAcknowledgedName'), @('Extreme_Content', 'ExtremeContentName')
    )
}

$settingsPrompt = Get-Prompt '1770095491833-qo0t290u'
$settingsPrompt.content = Replace-CurrentSettings -Content $settingsPrompt.content -Replacement (New-SettingsJson -Sections $settingsSections)

$scaleIds = @($scalePrompts | ForEach-Object { $_.identifier })
$basePrompts = @($prompts | Where-Object { $scaleIds -notcontains $_.identifier })
$insertBeforeId = '1770095491852-vouskndq'
$insertIndex = -1
for ($i = 0; $i -lt $basePrompts.Count; $i++) {
    if ($basePrompts[$i].identifier -eq $insertBeforeId) {
        $insertIndex = $i
        break
    }
}
if ($insertIndex -lt 0) {
    throw "Could not find insert point '$insertBeforeId'."
}

$newPrompts = New-Object System.Collections.ArrayList
for ($i = 0; $i -lt $insertIndex; $i++) {
    [void]$newPrompts.Add($basePrompts[$i])
}
foreach ($prompt in $scalePrompts) {
    [void]$newPrompts.Add($prompt)
}
for ($i = $insertIndex; $i -lt $basePrompts.Count; $i++) {
    [void]$newPrompts.Add($basePrompts[$i])
}

$data.prompts = @($newPrompts)
$orderEntries = @($newPrompts | ForEach-Object {
    [pscustomobject][ordered]@{
        identifier = $_.identifier
        enabled    = [bool]$_.enabled
    }
})
$data.prompt_order[0].order = $orderEntries

Write-GeneratedText -Path $jsonPath -Text ($data | ConvertTo-Json -Depth 100)

function Assert-UnderRepo {
    param([string]$Path)

    $resolved = if (Test-Path -LiteralPath $Path) {
        (Resolve-Path -LiteralPath $Path).Path
    } else {
        (New-Item -ItemType Directory -Path $Path -Force).FullName
    }

    if (-not $resolved.StartsWith($repoRoot, [StringComparison]::OrdinalIgnoreCase)) {
        throw "Refusing to write outside repo: $resolved"
    }
    $resolved
}

function Clear-MarkdownDirectory {
    param([string]$Path)

    $resolved = Assert-UnderRepo -Path $Path
    Get-ChildItem -LiteralPath $resolved -File -Filter '*.md' | ForEach-Object {
        Remove-Item -LiteralPath $_.FullName
    }
    $resolved
}

function Get-BoolText {
    param([bool]$Value)
    if ($Value) { 'true' } else { 'false' }
}

function Escape-YamlString {
    param([string]$Value)
    ($Value -replace '\\', '\\' -replace '"', '\"')
}

function Get-SafeFileName {
    param([string]$Value)

    $invalid = [Regex]::Escape((-join [System.IO.Path]::GetInvalidFileNameChars()))
    $safe = [Regex]::Replace($Value, "[$invalid]", '_')
    $safe = [Regex]::Replace($safe, '\s+', ' ').Trim()
    if ($safe.Length -gt 130) {
        $safe = $safe.Substring(0, 130).Trim()
    }
    $safe
}

function Export-PromptMarkdown {
    param(
        [array]$PromptList,
        [string]$Directory
    )

    $resolved = Clear-MarkdownDirectory -Path $Directory
    for ($i = 0; $i -lt $PromptList.Count; $i++) {
        $prompt = $PromptList[$i]
        $name = Get-SafeFileName -Value ([string]$prompt.name)
        $id = Get-SafeFileName -Value ([string]$prompt.identifier)
        $fileName = '{0:D3} - {1} [{2}].md' -f $i, $name, $id
        $path = Join-Path $resolved $fileName

        $frontMatter = @(
            '---',
            ('identifier: "{0}"' -f (Escape-YamlString ([string]$prompt.identifier))),
            ('name: "{0}"' -f (Escape-YamlString ([string]$prompt.name))),
            ('role: "{0}"' -f (Escape-YamlString ([string]$prompt.role))),
            ('marker: {0}' -f (Get-BoolText ([bool]$prompt.marker))),
            ('system_prompt: {0}' -f (Get-BoolText ([bool]$prompt.system_prompt))),
            ('enabled: {0}' -f (Get-BoolText ([bool]$prompt.enabled))),
            ('injection_position: {0}' -f $prompt.injection_position),
            ('injection_depth: {0}' -f $prompt.injection_depth),
            ('injection_order: {0}' -f $prompt.injection_order),
            'injection_trigger: []',
            ('forbid_overrides: {0}' -f (Get-BoolText ([bool]$prompt.forbid_overrides))),
            ('order_in_preset: {0}' -f $i),
            ('order_enabled: {0}' -f (Get-BoolText ([bool]$prompt.enabled))),
            '---',
            '',
            ([string]$prompt.content)
        ) -join "`r`n"

        Write-GeneratedText -Path $path -Text $frontMatter
    }
}

$updated = Get-Content -Raw -Encoding UTF8 -LiteralPath $jsonPath | ConvertFrom-Json
$promptList = @($updated.prompts)
Export-PromptMarkdown -PromptList $promptList -Directory (Join-Path $repoRoot 'NemoNet\Prompts')
Export-PromptMarkdown -PromptList $promptList -Directory (Join-Path $repoRoot 'NemoNet\Archived Prompts\Nemo Net 2.0')

$promptCount = $promptList.Count
$regexCount = @($updated.extensions.regex_scripts).Count
"Updated NemoNet v2: prompts=$promptCount regex_scripts=$regexCount"

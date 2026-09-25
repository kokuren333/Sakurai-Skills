$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()
$principlesDir = Join-Path $root 'principles'
$principleFiles = Get-ChildItem -LiteralPath $principlesDir -Filter '*.md' | Where-Object Name -ne 'index.yaml'
$ids = @{}
foreach ($file in $principleFiles) {
    $text = Get-Content -LiteralPath $file.FullName -Raw
    if ($text -notmatch '(?m)^id:\s*([a-z0-9-]+)\s*$') { $errors.Add("Missing/invalid id: $($file.Name)"); continue }
    $id = $Matches[1]
    if ($ids.ContainsKey($id)) { $errors.Add("Duplicate principle id: $id") } else { $ids[$id] = $file }
    if ($text -notmatch '(?m)^source_file:\s*.+$') { $errors.Add("Missing source_file: $id") }
    if ($text -notmatch '(?m)^## SOURCE\s*$' -or $text -notmatch '(?m)^## GENERALIZED\s*$' -or $text -notmatch '(?m)^## AGENT\s*$') { $errors.Add("Missing provenance layers: $id") }
    if ($text -match '\]\(([^)]+)\)') {
        foreach ($path in $Matches[1]) { }
    }
    $linkMatches = [regex]::Matches($text, '\]\((\.\./sources/raw/[^)]+)\)')
    foreach ($link in $linkMatches) {
        $target = [IO.Path]::GetFullPath((Join-Path $principlesDir $link.Groups[1].Value))
        if (-not (Test-Path -LiteralPath $target)) { $errors.Add("Broken source link in $id : $($link.Groups[1].Value)") }
    }
}
if (-not (Test-Path (Join-Path $root 'sources/raw/00-repository-completion-brief.md'))) { $errors.Add('Missing preserved brief') }
$skills = Get-ChildItem (Join-Path $root 'skills') -Recurse -Filter 'SKILL.md'
foreach ($skill in $skills) {
    $text = Get-Content -LiteralPath $skill.FullName -Raw
    $refs = [regex]::Matches($text, '`([a-z0-9-]+)`')
    foreach ($ref in $refs) {
        $id = $ref.Groups[1].Value
        if ($id -match '^(player-first|protect-player|preserve-core|rapid-prototyping|player-agency|reduce-unnecessary|communicate-through|readability-before|prototype-before|specify-for|make-work-visible|test-with|design-for|scope-and|make-onboarding|coordinate-audio|promote-the-real)') {
            if (-not $ids.ContainsKey($id)) { $errors.Add("Unknown principle referenced by $($skill.FullName): $id") }
        }
    }
}
if ($errors.Count) { $errors | ForEach-Object { Write-Error $_ }; exit 1 }
Write-Output "Validation passed: $($ids.Count) unique principles, $($skills.Count) Skills, source links resolved."

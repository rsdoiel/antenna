<#
.SYNOPSIS
Converts skim and markdown files to HTML and processes them using PowerShell.
#>
# Generate all the feed pages
Write-Host "Generating aggregated pages"
antenna generate

# Find the CommonMark files and render them to HTML with Pandoc
Write-Host "Generating Pandoc pages"
$mdFiles = @("about.md", "forecasts.md", "index.md", "README.md", "search.md", "TODO.md")
foreach ($mdFile in $mdFiles) {
    $htmlFile = [System.IO.Path]::ChangeExtension($mdFile, ".html")
    Write-Host "Generating $htmlFile from $mdFile"
    antenna page $mdFile $htmlFile
    if (Test-Path -Path ".git") { git add $htmlFile }
}

# Build our search indexes now that we have HTML pages.
Write-Host "Building the search indexes"
if (Test-Path -Path "pagefind") { Remove-Item -Recurse -Force "pagefind" }
pagefind --verbose --force-language en-US
if (Test-Path -Path ".git") { git add pagefind }

Write-Host "Done $(Get-Date)"

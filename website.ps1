<#
.SYNOPSIS
Converts skim and markdown files to HTML and processes them using PowerShell.
#>

# Get today's date and the date from seven days ago
$TODAY = Get-Date -Format "yyyy-MM-dd"
$LAST_WEEKDAY = (Get-Date).AddDays(-7).ToString("yyyy-MM-dd")

# Override LAST_WEEKDAY if 'start' is provided
if ($start -ne $null) {
    $LAST_WEEKDAY = $start
}

# Output the variables (optional, for verification)
Write-Host "TODAY: $TODAY"
Write-Host "LAST_WEEKDAY: $LAST_WEEKDAY"

# List of skim files to process
$skimFiles1 = @(
    "socal_north.skim", "north_america.skim", "pacific.skim", "planet.skim",
    "science_and_technology.skim", "columns.skim", "snapshots.skim"
)

foreach ($SKIM_FILE in $skimFiles1) {
    $HTML_FILE = (Get-Item $SKIM_FILE).BaseName + ".html"
    Write-Host "Generating $HTML_FILE from $SKIM_FILE"

    # SQLite commands
    sqlite3 "$SKIM_FILE" "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%' OR LOWER(QUOTE(tags)) LIKE '%sports%' OR LOWER(QUOTE(tags)) LIKE '%opinion%' OR lower(quote(tags)) like '%obituar%' or lower(quote(tags)) like '%views/columnists%'"
    sqlite3 "$SKIM_FILE" "UPDATE items SET status = 'read'"
    sqlite3 "$SKIM_FILE" "UPDATE items SET status = 'saved' WHERE published >= '$LAST_WEEKDAY'"

    # Generate HTML file
    .\skim2html "$SKIM_FILE" front_page.yaml | Out-File "$HTML_FILE"

    # Git add if .git directory exists
    if (Test-Path -Path ".git") {
        git add "$HTML_FILE"
    }
}

# List of additional skim files to process
$skimFiles2 = @(
    "retro_computing.skim", "going_electric.skim", "health.skim", "home.skim",
    "food.skim", "journalism.skim", "libraries.skim", "motorcycles.skim",
    "small_papers.skim", "craft.skim", "writing.skim"
)

foreach ($SKIM_FILE in $skimFiles2) {
    $HTML_FILE = (Get-Item $SKIM_FILE).BaseName + ".html"
    Write-Host "Generating $HTML_FILE from $SKIM_FILE"

    # SQLite commands
    sqlite3 "$SKIM_FILE" "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%' OR LOWER(QUOTE(tags)) LIKE '%sports%' OR LOWER(QUOTE(tags)) LIKE '%opinion%' OR lower(quote(tags)) like '%obituar%' or lower(quote(tags)) like '%views/columnists%'"
    sqlite3 "$SKIM_FILE" "UPDATE items SET status = 'read'"
    sqlite3 "$SKIM_FILE" "UPDATE items SET status = 'saved' WHERE published >= '$LAST_WEEKDAY'"

    # Generate HTML file
    .\skim2html "$SKIM_FILE" other_reading.yaml | Out-File "$HTML_FILE"

    # Git add if .git directory exists
    if (Test-Path -Path ".git") {
        git add "$HTML_FILE"
    }
}

# Find the CommonMark files and render them to HTML with Pandoc
Get-ChildItem -Recurse -Filter "*.md" | ForEach-Object {
    $MD_FILE = $_.FullName
    $HTML_FILE = (Get-Item $MD_FILE).BaseName + ".html"
    Write-Host "Generating $HTML_FILE from $MD_FILE"

    # Generate HTML file using Pandoc
    pandoc -f markdown -t html5 --lua-filter=links-to-html.lua --template front_page.tmpl $MD_FILE -o $HTML_FILE

    # Git add if .git directory exists
    if (Test-Path -Path ".git") {
        git add $HTML_FILE
    }
}

# Build our search indexes now that we have HTML pages.
& pagefind --verbose --force-language en --site .

# Git add pagefind if .git directory exists
if (Test-Path -Path ".git") {
    git add pagefind
}

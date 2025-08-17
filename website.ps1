# Get today's date and the date 7 days ago
$TODAY = (Get-Date).ToString("yyyy-MM-dd")
$LAST_WEEKDAY = (Get-Date).AddDays(-7).ToString("yyyy-MM-dd")

# Override LAST_WEEKDAY if 'start' is provided
if ($start) {
    $LAST_WEEKDAY = $start
}

# Output the variables (optional, for verification)
Write-Host "TODAY: $TODAY"
Write-Host "LAST_WEEKDAY: $LAST_WEEKDAY"

# Find the skim/urls files and generate html pages using skim2html
Get-ChildItem -Recurse -File | Where-Object { $_.Name -match '\.skim$' } | ForEach-Object {
    $SKIM_FILE = $_.FullName
    $HTML_FILE = (Split-Path $SKIM_FILE -Leaf).Replace(".skim", ".html")
    Write-Host "Generating $HTML_FILE from $SKIM_FILE"

    # SQLite commands to clean and update the database
    sqlite3 $SKIM_FILE "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%' OR LOWER(QUOTE(tags)) LIKE '%sports%' OR LOWER(QUOTE(tags)) LIKE '%opinion%' OR lower(quote(tags)) like '%obituar%' or lower(quote(tags)) like '%views/columnists%'"
    sqlite3 $SKIM_FILE "UPDATE items SET status = 'read'"
    sqlite3 $SKIM_FILE "UPDATE items SET status = 'saved' WHERE published >= '$LAST_WEEKDAY'"

    # Generate HTML
    & skim2html $SKIM_FILE front_page.yaml | Out-File -Encoding utf8 $HTML_FILE
    git add $HTML_FILE
}

# Find the CommonMark files and render them to HTML with Pandoc
Get-ChildItem -Recurse -File | Where-Object { $_.Name -match '\.md$' } | ForEach-Object {
    $MD_FILE = $_.FullName
    $HTML_FILE = (Split-Path $MD_FILE -Leaf).Replace(".md", ".html")
    Write-Host "Generating $HTML_FILE from $MD_FILE"

    # Render with Pandoc
    pandoc -f markdown -t html5 `
           --lua-filter=links-to-html.lua `
           --template front_page.tmpl `
           $MD_FILE -o $HTML_FILE
    git add $HTML_FILE
}

# Build search indexes
pagefind `
  --verbose `
  --force-language en `
  --site .
git add pagefind

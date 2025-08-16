# Get today's date and the nearest Sunday and Saturday
$TODAY = reldate +0 day
$SUNDAY = reldate sunday
$SATURDAY = reldate saturday

# If today is Sunday, set SUNDAY to the previous Sunday
if ($TODAY -eq $SUNDAY) {
    $SUNDAY = reldate --from $TODAY -- -7 day
}

# If today is Saturday, set SUNDAY to the previous Sunday
if ($TODAY -eq $SATURDAY) {
    $SUNDAY = reldate --from $TODAY -- -7 day
}

# Set VOL_NO to the current year and week number
$VOL_NO = (Get-Date -Format "yyyy.W")
$YEAR = (Get-Date -Format "yyyy")

# Override VOL_NO if 'vol' is provided
if ($env:vol) {
    $VOL_NO = $env:vol
}

# Override SUNDAY if 'start' is provided
if ($env:start) {
    $SUNDAY = $env:start
}

# Override SATURDAY if 'end' is provided
if ($env:end) {
    $SATURDAY = $env:end
}

# Output the variables (optional, for verification)
Write-Host "TODAY: $TODAY"
Write-Host "SUNDAY: $SUNDAY"
Write-Host "SATURDAY: $SATURDAY"

# Find the .skim files and generate HTML pages using skim2html
Get-ChildItem -File -Recurse -Filter "*.skim" | ForEach-Object {
    $SKIM_FILE = $_.FullName
    $HTML_FILE = (Split-Path $SKIM_FILE -Leaf).Replace(".skim", ".html")
    Write-Host "Generating $HTML_FILE from $SKIM_FILE"

    # SQLite commands
    sqlite3 "$SKIM_FILE" "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%' OR LOWER(QUOTE(tags)) LIKE '%sports%' OR LOWER(QUOTE(tags)) LIKE '%opinion%' OR LOWER(QUOTE(tags)) LIKE '%obituar%' OR LOWER(QUOTE(tags)) LIKE '%views/columnists%'"
    sqlite3 "$SKIM_FILE" "UPDATE items SET status = 'read'"
    sqlite3 "$SKIM_FILE" "UPDATE items SET status = 'saved' WHERE published >= '$SUNDAY' AND published <= '$SATURDAY'"

    # Generate HTML
    & skim2html "$SKIM_FILE" front_page.yaml *> "$HTML_FILE"
}

# Find the CommonMark files and render them to HTML with Pandoc
Get-ChildItem -File -Recurse -Filter "*.md" | ForEach-Object {
    $MD_FILE = $_.FullName
    $HTML_FILE = (Split-Path $MD_FILE -Leaf).Replace(".md", ".html")
    Write-Host "Generating $HTML_FILE from $MD_FILE"

    # Render with Pandoc
    pandoc -f markdown -t html5 `
           --lua-filter=links-to-html.lua `
           --template front_page.tmpl `
           "$MD_FILE" `
           -o "$HTML_FILE"
}

# Build our search indexes now that we have HTML pages.
pagefind \
  --verbose \
  --force-language en \
  --site .

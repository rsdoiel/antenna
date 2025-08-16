$env:SKIM_USER_AGENT = "curl/8.4.0"

# If no filename provided, process all .urls files
if ($args.Count -eq 0) {
    Get-ChildItem -File -Recurse | Where-Object { $_.Name -match '\.urls$' } | ForEach-Object {
        skimmer $_.FullName
    }
} else {
    skimmer $args[0]
}

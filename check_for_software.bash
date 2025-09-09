#!/bin/bash

# Function to extract semver from version string
extract_semver() {
    local version_str="$1"
    if [[ "$version_str" =~ ([0-9]+(\.[0-9]+){0,2}) ]]; then
        echo "${BASH_REMATCH[1]}"
    else
        echo ""
    fi
}

# Function to check if a command exists and if its version matches the required semver pattern
check_software_version() {
    local software_name="$1"
    local command_to_check="$2"
    local required_version="$3"
    local version_flag="${4:---version}"

    if ! command -v "$command_to_check" >/dev/null 2>&1; then
        echo "[ERROR] $software_name is NOT installed."
        return 1
    fi

    local version_output
    version_output=$($command_to_check $version_flag 2>&1 | head -n 1)
    local installed_version
    installed_version=$(extract_semver "$version_output")

    if [[ -z "$installed_version" ]]; then
        echo "[ERROR] Could not extract semver from $software_name version output: $version_output"
        return 1
    fi

    if [[ ! "$installed_version" =~ ^${required_version//./\\.}([.\-]|$) ]]; then
        echo "[ERROR] $software_name version $installed_version does NOT match required pattern: $required_version"
        return 1
    fi
    return 0
}

# Main script logic
exit_code=0

# Check for required software
check_software_version "CMTools" "cmt"  "0.0.40" "--version" || exit_code=1
check_software_version "antennaApp" "antenna" "0.0.2" "--version" || exit_code=1
check_software_version "Pandoc" "pandoc" "3" "--version" || exit_code=1
check_software_version "Bash" "bash" "5" "--version" || exit_code=1

exit $exit_code

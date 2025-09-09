#!/bin/bash
WORK_DIR="$(dirname "$0")"
if [ "${WORK_DIR}" != "" ]; then
  cd "${WORK_DIR}" || exit 1
fi
PATH="${HOME}/bin:/usr/local/bin:/usr/bin"
export PATH
echo $PATH
antenna harvest 2>harvest_errors.log
echo "$(wc -l harvest_errors.log) errors"
./website.bash
./publish.bash

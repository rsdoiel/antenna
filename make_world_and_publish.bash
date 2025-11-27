#!/bin/bash
WORK_DIR="$(dirname "$0")"
if [ "${WORK_DIR}" != "" ]; then
  cd "${WORK_DIR}" || exit 1
fi
PATH="${HOME}/bin:/usr/local/bin:/usr/bin"
export PATH
echo $PATH
antenna harvest
./website.bash
if [ "$1" = "publish" ]; then
  ./publish.bash
fi

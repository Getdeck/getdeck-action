#!/bin/bash

EXE="/usr/local/bin/deck get"

if [ -n "${DECK_NAME}" ]; then
  EXE="${EXE} --name ${DECK_NAME}"
fi

if [[ -n ${WAIT} && ${WAIT} == "1" || ${WAIT} == "true" || ${WAIT} == "True" ]]; then
  EXE="${EXE} --wait"
fi

if [[ -n "${TIMEOUT}" ]]; then
  EXE="${EXE} --timeout ${TIMEOUT}"
fi

EXE="${EXE} ${DECK_FILE_PATH}"

echo $EXE

$EXE
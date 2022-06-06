#!/bin/bash

EXE="/usr/local/bin/deck get"

if [ -z "$DECK_NAME" ]
then
  echo $DECK_NAME
  EXE="${EXE} --name ${DECK_NAME}"
fi

if [[ $WAIT == "1" || $WAIT == "true" || $WAIT == "True" ]]
then
  EXE="${EXE} --wait"
fi

if [ -z "$TIMEOUT" ]
then
  EXE="${EXE} --timeout ${TIMEOUT}"
fi

EXE="${EXE} $DECK_FILE_PATH"

echo $EXE

$EXE
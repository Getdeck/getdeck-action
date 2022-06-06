if [ -z "$DECK_NAME" ]
then
  /usr/local/bin/deck get ${DECK_FILE_PATH}
else
  /usr/local/bin/deck get --name ${DECK_NAME} ${DECK_FILE_PATH}
fi
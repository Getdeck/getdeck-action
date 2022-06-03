if [ -z "$DECK_NAME" ]
then
  deck get ${DECK_FILE_PATH}
else
  deck get --name ${DECK_NAME} ${DECK_FILE_PATH}
fi
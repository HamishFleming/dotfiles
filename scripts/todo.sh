#!/bin/bash

# TDIST API Token
TDIST_TOKEN=''


# Variable to store first argument to setup-repo, the repo name. Will be used as GH repo name, too.
TaskName=$1

# bash generate random 32 character alphanumeric string (upper and lowercase) and 
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
# bash generate random 32 character alphanumeric string (upper and lowercase) and 
TEMP_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)


curl https://api.todoist.com/sync/v8/sync \
    -d 'token= '${TDIST_TOKEN}'' \
    -d 'sync_token=*' \
    -d commands='[{"type": "item_add", "temp_id": "'"${TEMP_UUID}"'", "uuid": "'"${NEW_UUID}"'", "args": {"content": "'"${TaskName}"'"}}]'



#Add in functionality to generate a new project on todoist to add synching of reporst for to do for each optional git_create

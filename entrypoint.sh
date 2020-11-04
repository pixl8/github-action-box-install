#!/bin/sh

BOXJSON_DIR=${INPUT_BOXJSON_DIR:-""}
PRODUCTION=${INPUT_PRODUCTION:-"false"}
VERBOSE=${INPUT_VERBOSE:-"false"}
FORCE=${INPUT_FORCE:-"false"}
SYSTEM=${INPUT_SYSTEM:-"false"}
FULL_DIR="${GITHUB_WORKSPACE}${BOXJSON_DIR}"
BOX_JSON_FILE="${FULL_DIR}/box.json"

if [[ -f $BOX_JSON_FILE ]] ; then
	cd $FULL_DIR
	box install production=$PRODUCTION verbose=$VERBOSE force=$FORCE || exit 1
else
	echo "No box.json file found at: $BOX_JSON_FILE. Not installing."
	exit 1
fi
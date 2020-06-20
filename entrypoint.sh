#!/bin/bash

hub checkout master
VERSION_NAME=$(cat ./"${APP_FOLDER}"/version.txt)
hub release create -a ./"${APP_FOLDER}"/build/outputs/apk/debug/*-debug.apk -m "${RELEASE_TITLE} - v${VERSION_NAME}" v"${VERSION_NAME}"
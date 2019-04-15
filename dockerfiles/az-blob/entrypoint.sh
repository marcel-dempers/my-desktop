#!/bin/bash
cmd=$1

function upload_files() {
  echo "uploading file pattern: [${FILES}]"
    az storage blob upload-batch --destination-path ${BLOB_PATH} \
                                    -d ${AZURE_CONTAINER_NAME} \
                                    -s ${FILES} \
                                    --pattern "*" \
                                    --account-name $AZURE_STORAGE_ACCOUNT_NAME \
                                    --account-key $AZURE_STORAGE_ACCOUNT_KEY
}

function check() {
    if [[ -z "${FILES}" ]]; then echo "FILES is not set, exiting"; exit 1; fi
    if [[ -z "${BLOB_PATH}" ]]; then echo "BLOB_PATH is not set, exiting";exit 1; fi
    if [[ -z "${AZURE_CONTAINER_NAME}" ]]; then echo "AZURE_CONTAINER_NAME is not set, exiting"; exit 1; fi
    if [[ -z "${AZURE_STORAGE_ACCOUNT_NAME}" ]]; then echo "AZURE_STORAGE_ACCOUNT_NAME is not set, exiting"; exit 1; fi
    if [[ -z "${AZURE_STORAGE_ACCOUNT_KEY}" ]]; then echo "AZURE_STORAGE_ACCOUNT_KEY is not set, exiting"; exit 1; fi
}

check
if [ $cmd == 'upload' ]
then
    echo "upload!"
    upload_files
fi


echo 'done'
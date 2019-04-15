docker run -it --rm \
                -v $PWD:/data \
                -e BLOB_PATH="/" \
                -e AZURE_STORAGE_ACCOUNT_KEY= \
                -e AZURE_STORAGE_ACCOUNT_NAME=marceltest \
                -e AZURE_CONTAINER_NAME=perf \
                -e FILES=/data/ \
                aimvector/az-blob upload

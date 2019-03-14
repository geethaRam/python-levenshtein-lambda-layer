# build the layer

#!/bin/bash -x

set -e

rm -rf layer
rm -rf *.zip

docker build -t python-levenshtein-lambda-layer .
CONTAINER=$(docker run -d python-levenshtein-lambda-layer false)
docker cp ${CONTAINER}:/layer.zip layer.zip
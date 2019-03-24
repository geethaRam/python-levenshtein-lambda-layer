aws s3 cp layer.zip s3://lambda-layer-geetharam

sam package --template-file template.yaml --s3-bucket lambda-layer-geetharam --output-template-file out.yaml

sam deploy  --template-file out.yaml --stack-name python-levenshtein-lambda-layer

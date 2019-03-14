aws s3 cp layer.zip s3://lambda-layer-geetharam

sam package --template-file sam.yaml --s3-bucket lambda-layer-geetharam --output-template-file out.yaml

sam deploy  --template-file /Users/ramachag/FINRA/devops/Zgeetharam/python-levenshtein-lambda-layer/out.yaml --stack-name python-levenshtein-lambda-layer

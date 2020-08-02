#!/bin/bash
set

rm *.toml


echo "GITHUB_WORKSPACE"
pwd 
ls -all $GITHUB_WORKSPACE
sam package --template-file $INPUT_TEMPLATEFILE --output-template-file packaged.yaml --s3-bucket $INPUT_S3_BUCKET 
ls -all $GITHUB_WORKSPACE
sam deploy --no-fail-on-empty-changeset --template-file packaged.yaml --stack-name $INPUT_STACK --capabilities $INPUT_CAPABILITIES --region $INPUT_AWS_DEFAULT_REGION --parameter-overrides $INPUT_PARAMETER_OVERRIDES

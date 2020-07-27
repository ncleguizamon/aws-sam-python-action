#!/bin/bash
set

rm *.toml
ls -all 
sam package --template-file $TEMPLATEFILE --output-template-file packaged.yaml --s3-bucket $S3_BUCKET
sam deploy --template-file packaged.yaml --stack-name $STACK --capabilities $CAPABILITIES --region $AWS_DEFAULT_REGION --parameter-overrides $PARAMETER_OVERRIDES
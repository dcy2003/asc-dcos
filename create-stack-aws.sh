#!/bin/bash

aws cloudformation create-stack \
    --stack-name DCOS \
    --template-body file://infrastructure.json \
    --parameters  \
    ParameterKey=Environment,ParameterValue=aws \
    ParameterKey=KeyName,ParameterValue=dcos-west-key-pair
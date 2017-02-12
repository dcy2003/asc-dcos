#!/bin/bash

aws cloudformation create-stack \
    --stack-name DCOS \
    --template-body file://infrastructure-prerequisites.json \
    --parameters  \
    ParameterKey=Environment,ParameterValue=aws \
    ParameterKey=KeyName,ParameterValue=dcos-west-key-pair
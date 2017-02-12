#!/bin/bash

aws cloudformation create-stack \
    --stack-name DCOS \
    --template-body file://infrastructure.json \
    --parameters  \
    ParameterKey=Environment,ParameterValue=c2s \
    ParameterKey=VpcId,ParameterValue=FILL_ME_IN \
    ParameterKey=PublicSubnetId,ParameterValue=FILL_ME_IN \
    ParameterKey=KeyName,ParameterValue=dcos-west-key-pair
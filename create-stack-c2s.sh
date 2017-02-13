#!/bin/bash

aws cloudformation create-stack \
    --stack-name DCOS \
    --template-body file://ZEN.json \
    --parameters  \
    ParameterKey=Environment,ParameterValue=c2s \
    ParameterKey=VpcId,ParameterValue=FILL_ME_IN \
    ParameterKey=PublicSubnetId,ParameterValue=FILL_ME_IN \
    ParameterKey=PrivateSubnetId,ParameterValue=FILL_ME_IN \
    ParameterKey=PublicAgentRole,ParameterValue=FILL_ME_IN \
    ParameterKey=PublicAgentInstanceProfile,ParameterValue=FILL_ME_IN \
    ParameterKey=PrivateAgentRole,ParameterValue=FILL_ME_IN \
    ParameterKey=PrivateAgentInstanceProfile,ParameterValue=FILL_ME_IN \
    ParameterKey=MasterRole,ParameterValue=FILL_ME_IN \
    ParameterKey=MasterInstanceProfile,ParameterValue=FILL_ME_IN \
    ParameterKey=KeyName,ParameterValue=dcos-west-key-pair
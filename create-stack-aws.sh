#!/bin/bash

aws cloudformation create-stack \
    --stack-name DCOS \
    --template-body file://ZEN.json \
    --parameters  \
    ParameterKey=Environment,ParameterValue=aws \
    ParameterKey=PublicAgentRole,ParameterValue=arn:aws:iam::237001706895:role/DCOS-EE-Integration-Environment-3-PublicAgentRole-CN5U3WTVSIL1 \
    ParameterKey=PublicAgentInstanceProfile,ParameterValue=arn:aws:iam::237001706895:instance-profile/DCOS-EE-Integration-Environment-3-Master-PublicAgentStack-WLLD3ZQ5DN5W-PublicAgentInstanceProfile-1NGHMYX52I3KY \
    ParameterKey=PrivateAgentRole,ParameterValue=arn:aws:iam::237001706895:role/DCOS-EE-Integration-Environment-3-PrivateAgentRole-7LGADWM3WN9O \
    ParameterKey=PrivateAgentInstanceProfile,ParameterValue=arn:aws:iam::237001706895:instance-profile/DCOS-EE-Integration-Environment-3-Master-PrivateAgentStack-10IGL5ZPR7H4F-PrivateAgentInstanceProfile-19510YIWJOX1J \
    ParameterKey=MasterRole,ParameterValue=arn:aws:iam::237001706895:role/DCOS-EE-Integration-Environment-3-Maste-MasterRole-GO2795NLF3EE \
    ParameterKey=MasterInstanceProfile,ParameterValue=arn:aws:iam::237001706895:instance-profile/DCOS-EE-Integration-Environment-3-Master-MasterStack-CWJ1A4FJ4V0R-MasterInstanceProfile-DXY306E5R2CC \
    ParameterKey=KeyName,ParameterValue=dcos-west-key-pair \
    ParameterKey=ExhibitorS3Bucket,ParameterValue=https://s3.amazonaws.com/dcos-east-ha-exhibitor \
    --capabilities CAPABILITY_NAMED_IAM
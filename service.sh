#!/bin/bash

echo "${Choice_ServiceName}"




aws cloudformation create-stack --stack-name lssp-${Choice_ServiceName} --template-body file://servicePB.yaml --parameters ParameterKey=ServiceName,ParameterValue=${Choice_ServiceName} ParameterKey=ContainerName,ParameterValue=${Choice_ServiceName} ParameterKey=ContainerCpu,ParameterValue=${Choice_CPU} ParameterKey=ContainerMemory,ParameterValue=${Choice_Memory} ParameterKey=ContainerPort,ParameterValue=${Port_Reference} ParameterKey=Family,ParameterValue=${Family_reference} ParameterKey=TargetGroupName,ParameterValue=${Targetgroup_Name} ParameterKey=Path,ParameterValue=${Path_healcheck} ParameterKey=ImageUrl,ParameterValue=${Image_Url_reference} ParameterKey=Priority,ParameterValue=${Priority} --region ap-southeast-1
#!/bin/bash

echo "${Choice_ServiceName}"

sed s/LoadBalancerRuleApp/LoadBalancerRule${Choice_ServiceName}/g service1.yaml
sed s/TargetGroupApp/TargetGroup${Choice_ServiceName}/g service1.yaml
sed s/TaskDefinitionApp/TaskDefinition${Choice_ServiceName}/g service1.yaml
sed s/ServiceApp/Service${Choice_ServiceName}/g service1.yaml


aws cloudformation create-stack --stack-name ${Choice_ServiceName} --template-body file://service1.yaml --parameters ParameterKey=ServiceName,ParameterValue=${Choice_ServiceName} ParameterKey=ContainerName,ParameterValue=${Choice_ServiceName} ParameterKey=ContainerCpu,ParameterValue=${Choice_CPU} ParameterKey=ContainerMemory,ParameterValue=${Choice_Memory} ParameterKey=ContainerPort,ParameterValue=${Port_Reference} ParameterKey=Family,ParameterValue=${Family_reference} ParameterKey=TargetGroupName,ParameterValue=${Targetgroup_Name} ParameterKey=Path,ParameterValue=${Path_healcheck} ParameterKey=ImageUrl,ParameterValue=${Image_Url_reference}
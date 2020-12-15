#!/bin/bash

echo "${Choice_ServiceName}"
aws cloudformation create-stack --stack-name ${Choice_ServiceName} --template-body file://service1.yaml --parameters ServiceName=${Choice_ServiceName} ContainerCpu=${Choice_CPU} ContainerMemory=${Choice_Memory} ContainerPort="${Port_Reference}" Family=${Family_reference} TargetGroupName=${Targetgroup_Name} Path=${Path_healcheck} ImageUrl=${Image_Url_reference}
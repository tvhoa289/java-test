#!/bin/bash


authentication = "tvhoa289/spring-boot-authentication-p8081"
portal = "tvhoa289/spring-boot-portal-p8082"
document_upload = "tvhoa289/spring-boot-documentupload-p8088"
cache_management = "tvhoa289/spring-boot-cachemanagement-p8089"
notification = "tvhoa289/spring-boot-notification-p8765"
user = "tvhoa289/spring-boot-user-p8080"
auditlog = "tvhoa289/spring-boot-auditlog-p8083"
dataquery = "tvhoa289/spring-boot-dataquery-p8084"
ecwrcontrol = "tvhoa289/spring-boot-ecwrcontrol-p8085"
configuration = "tvhoa289/spring-boot-configuration-p8086"
admin = "tvhoa289/spring-boot-admin-p8087"
dataImport = "tvhoa289/spring-boot-dataImport-p8888"

#Docker build and push
echo "${params.Choice_Image_to_build}"

if [${params.Choice_Image_to_build} == "authentication"]
    then
        echo "build Step:"
        docker build -t $authentication:$BUILD_NUMBER --build-arg path=/authentication/target/spring-boot-docker.jar --build-arg port=8081 .
        docker push $authentication:$BUILD_NUMBER
        docker rmi $authentication:$BUILD_NUMBER

elif [${params.Choice_Image_to_build} == "document_upload"]
    then
        docker build -t $document_upload:$BUILD_NUMBER --build-arg path=/documentupload/target/spring-boot-docker.jar --build-arg port=8088 .
        docker push $document_upload:$BUILD_NUMBER
        docker rmi $document_upload:$BUILD_NUMBER
else [${params.Choice_Image_to_build} == "dataImport"]
    docker build -t $dataImport:$BUILD_NUMBER --build-arg path=/dataImport/target/spring-boot-docker.jar --build-arg port=8888 .
    docker push $dataImport:$BUILD_NUMBER
    docker rmi $dataImport:$BUILD_NUMBER
fi

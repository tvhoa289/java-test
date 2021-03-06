#!/bin/bash


authentication="tvhoa289/spring-boot-authentication-p8081"
portal="810733428226.dkr.ecr.ap-southeast-1.amazonaws.com/lssp-portal-p8082"
document_upload="810733428226.dkr.ecr.ap-southeast-1.amazonaws.com/lssp-documentupload-p8088"
cache_management="tvhoa289/spring-boot-cachemanagement-p8089"
notification="tvhoa289/spring-boot-notification-p8765"
user="tvhoa289/spring-boot-user-p8080"
auditlog="810733428226.dkr.ecr.ap-southeast-1.amazonaws.com/lssp-auditlog-p8083"
dataquery="tvhoa289/spring-boot-dataquery-p8084"
ecwrcontrol="tvhoa289/spring-boot-ecwrcontrol-p8085"
configuration="tvhoa289/spring-boot-configuration-p8086"
admin="tvhoa289/spring-boot-admin-p8087"
dataImport="tvhoa289/spring-boot-dataimport-p8888"
#Docker build and push

echo "$BUILD_NUMBER"
a="base"
if [ "${Choice_ServiceName}" == "authentication" ]
    then
        echo "build Step:"
        docker build -t $authentication:$BUILD_NUMBER --build-arg path=/authentication/target/spring-boot-docker.jar --build-arg port=8081 .
        docker push $authentication:$BUILD_NUMBER
        docker rmi $authentication:$BUILD_NUMBER
elif [ "${Choice_ServiceName}" == "documentupload" ]
    then
        docker build -t $document_upload:$a --build-arg path=/documentupload/target/spring-boot-docker.jar --build-arg port=8088 .
        docker push $document_upload:$a
        docker rmi $document_upload:$a
elif [ "${Choice_ServiceName}" == "portal" ]
    then
        docker build -t $portal:$a --build-arg path=/portal/target/spring-boot-docker.jar --build-arg port=8082 .
        docker push $portal:$a
        docker rmi $portal:$a
        
elif [ "${Choice_ServiceName}" == "cachemanagement" ]
    then
        docker build -t $cache_management:$BUILD_NUMBER --build-arg path=/cachemanagement/target/spring-boot-docker.jar --build-arg port=8089 .
        docker push $cache_management:$BUILD_NUMBER
        docker rmi $cache_management:$BUILD_NUMBER
elif [ "${Choice_ServiceName}" == "notification" ]
    then
        docker build -t ${notification}:$BUILD_NUMBER --build-arg path=/notification/target/spring-boot-docker.jar --build-arg port=8765 .
        docker push $notification:$BUILD_NUMBER
        docker rmi $notification:$BUILD_NUMBER
elif [ "${Choice_ServiceName}" == "user" ]
    then
        docker build -t $user:$BUILD_NUMBER --build-arg path=/user/target/spring-boot-docker.jar --build-arg port=8080 .
        docker push $user:$BUILD_NUMBER
        docker rmi $user:$BUILD_NUMBER
elif [ "${Choice_ServiceName}" == "auditlog" ]
    then
        docker build -t $auditlog:$a --build-arg path=/auditlog/target/spring-boot-docker.jar --build-arg port=8083 .
        docker push $auditlog:$a
        docker rmi $auditlog:$a
elif [ "${Choice_ServiceName}" == "dataquery" ]
    then
        docker build -t $dataquery:$BUILD_NUMBER --build-arg path=/dataquery/target/spring-boot-docker.jar --build-arg port=8084 .
        docker push $dataquery:$BUILD_NUMBER
        docker rmi $dataquery:$BUILD_NUMBER
elif [ "${Choice_ServiceName}" == "ecwrcontrol" ]
    then
        docker build -t $ecwrcontrol:$BUILD_NUMBER --build-arg path=/ecwrcontrol/target/spring-boot-docker.jar --build-arg port=8085 .
        docker push $ecwrcontrol:$BUILD_NUMBER
        docker rmi $ecwrcontrol:$BUILD_NUMBER
elif [ "${Choice_ServiceName}" == "configuration" ]
    then
        docker build -t $configuration:$BUILD_NUMBER --build-arg path=/configuration/target/spring-boot-docker.jar --build-arg port=8086 .
        docker push $configuration:$BUILD_NUMBER
        docker rmi $configuration:$BUILD_NUMBER
elif [ "${Choice_ServiceName}" == "admin" ]
    then
        docker build -t $admin:$BUILD_NUMBER --build-arg path=/admin/target/spring-boot-docker.jar --build-arg port=8087 .
        docker push $admin:$BUILD_NUMBER
        docker rmi $admin:$BUILD_NUMBER
else [ "${Choice_ServiceName}" == "dataImport" ]
    docker build -t $dataImport:$BUILD_NUMBER --build-arg path=/dataImport/target/spring-boot-docker.jar --build-arg port=8888 .
    docker push $dataImport:$BUILD_NUMBER
    docker rmi $dataImport:$BUILD_NUMBER
fi

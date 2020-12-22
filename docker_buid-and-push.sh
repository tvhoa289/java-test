#!/bin/bash


authentication = 'tvhoa289/spring-boot-authentication-p8081'
Portal = 'tvhoa289/spring-boot-portal-p8082'
document_upload = 'tvhoa289/spring-boot-documentupload-p8088'
cache_management = 'tvhoa289/spring-boot-cachemanagement-p8089'
notification = 'tvhoa289/spring-boot-notification-p8765'
user = 'tvhoa289/spring-boot-user-p8080'
auditlog = 'tvhoa289/spring-boot-auditlog-p8083'
dataquery = 'tvhoa289/spring-boot-dataquery-p8084'
ecwrcontrol = 'tvhoa289/spring-boot-ecwrcontrol-p8085'
configuration = 'tvhoa289/spring-boot-configuration-p8086'
admin = 'tvhoa289/spring-boot-admin-p8087'
dataImport = 'tvhoa289/spring-boot-dataImport-p8888'

#Docker build and push
if ("${params.Choice_Image_to_build}" == 'authentication'){
    sh "echo 'build Step:'"
    sh 'docker build -t ${authentication}:$BUILD_NUMBER --build-arg path=/authentication/target/spring-boot-docker.jar --build-arg port=8081 .'
    sh "docker push ${authentication}:$BUILD_NUMBER"
    sh "docker rmi ${authentication}:$BUILD_NUMBER"
}
else if ("${params.Choice_Image_to_build}" == 'document_upload'){
    sh 'docker build -t ${document_upload}:$BUILD_NUMBER --build-arg path=/documentupload/target/spring-boot-docker.jar --build-arg port=8088 .'
    sh "docker push ${document_upload}:$BUILD_NUMBER"
    sh "docker rmi ${document_upload}:$BUILD_NUMBER"
}
else if ("${params.Choice_Image_to_build}" == 'portal'){
    sh 'docker build -t ${Portal}:$BUILD_NUMBER --build-arg path=/Portal/target/spring-boot-docker.jar --build-arg port=8082 .'
    sh "docker push ${Portal}:$BUILD_NUMBER"
    sh "docker rmi ${Portal}:$BUILD_NUMBER"
}
else if ("${params.Choice_Image_to_build}" == 'cache_management'){
    sh 'docker build -t ${cache_management}:$BUILD_NUMBER --build-arg path=/cachemanagement/target/spring-boot-docker.jar --build-arg port=8089 .'
    sh "docker push ${cache_management}:$BUILD_NUMBER"
    sh "docker rmi ${cache_management}:$BUILD_NUMBER"
}
else if ("${params.Choice_Image_to_build}" == 'notification'){
    sh 'docker build -t ${notification}:$BUILD_NUMBER --build-arg path=/notification/target/spring-boot-docker.jar --build-arg port=8765 .'
    sh "docker push ${notification}:$BUILD_NUMBER"
    sh "docker rmi ${notification}:$BUILD_NUMBER"
}
else if ("${params.Choice_Image_to_build}" == 'user'){
    sh 'docker build -t ${user}:$BUILD_NUMBER --build-arg path=/user/target/spring-boot-docker.jar --build-arg port=8080 .'
    sh "docker push ${user}:$BUILD_NUMBER"
    sh "docker rmi ${user}:$BUILD_NUMBER"
}
else if ("${params.Choice_Image_to_build}" == 'auditlog'){
    sh 'docker build -t ${auditlog}:$BUILD_NUMBER --build-arg path=/auditlog/target/spring-boot-docker.jar --build-arg port=8083 .'
    sh "docker push ${auditlog}:$BUILD_NUMBER"
    sh "docker rmi ${auditlog}:$BUILD_NUMBER"
} 
else if ("${params.Choice_Image_to_build}" == 'dataquery'){
    sh 'docker build -t ${dataquery}:$BUILD_NUMBER --build-arg path=/dataquery/target/spring-boot-docker.jar --build-arg port=8084 .'
    sh "docker push ${dataquery}:$BUILD_NUMBER"
    sh "docker rmi ${dataquery}:$BUILD_NUMBER"
}
else if ("${params.Choice_Image_to_build}" == 'ecwrcontrol'){
    sh 'docker build -t ${ecwrcontrol}:$BUILD_NUMBER --build-arg path=/ecwrcontrol/target/spring-boot-docker.jar --build-arg port=8085 .'
    sh "docker push ${ecwrcontrol}:$BUILD_NUMBER"
    sh "docker rmi ${ecwrcontrol}:$BUILD_NUMBER"
}
else if ("${params.Choice_Image_to_build}" == 'configuration'){
    sh 'docker build -t ${configuration}:$BUILD_NUMBER --build-arg path=/configuration/target/spring-boot-docker.jar --build-arg port=8086 .'
    sh "docker push ${configuration}:$BUILD_NUMBER"
    sh "docker rmi ${configuration}:$BUILD_NUMBER"
}
else if ("${params.Choice_Image_to_build}" == 'admin'){
    sh 'docker build -t ${admin}:$BUILD_NUMBER --build-arg path=/admin/target/spring-boot-docker.jar --build-arg port=8087 .'
    sh "docker push ${admin}:$BUILD_NUMBER"
    sh "docker rmi ${admin}:$BUILD_NUMBER"
}
else if ("${params.Choice_Image_to_build}" == 'dataImport'){
    sh 'docker build -t ${dataImport}:$BUILD_NUMBER --build-arg path=/dataImport/target/spring-boot-docker.jar --build-arg port=8888 .'
    sh "docker push ${dataImport}:$BUILD_NUMBER"
    sh "docker rmi ${dataImport}:$BUILD_NUMBER"
}

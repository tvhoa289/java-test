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
a=${params.Choice_Image_to_build}
#Docker build and push

echo "$BUILD_NUMBER"
echo "${params.Choice_Image_to_build}"


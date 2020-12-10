FROM openjdk:8

arg port
arg path
ENV PORT=$port
EXPOSE $port
ADD $path spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar","--server.port=${PORT}"]
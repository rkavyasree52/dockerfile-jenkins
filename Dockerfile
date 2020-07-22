#Dockerfile:
FROM nginx
MAINTAINER nadimicherlakavyasree@gmail.com
RUN apt-get update
RUN apt-get install -y openjdk-8-jre && apt-get clean &&\
             mkdir temp_dir  &&   cd temp_dir && \
             ${JAVA_HOME}/bin/jar -xvf somejar.jar  &&\
             cd ..
EXPOSE 8080
ENTRYPOINT [""java", “-jar","-Dspring.profiles.active=default", "/app.jar"]
FROM adoptopenjdk/openjdk11

WORKDIR /usr/app

COPY target/*.jar /usr/app/

RUN sh -c 'ls -rlt calculator-api-*.jar'

ENTRYPOINT ["java","-jar","calculator-api-1.0.1-SNAPSHOT.jar"]

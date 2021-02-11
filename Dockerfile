FROM adoptopenjdk/openjdk11

WORKDIR /usr/app

COPY target/*.jar /usr/app/

RUN sh -c 'ls -rlt calculator-api-*.jar'

ENTRYPOINT ["java","-jar","calculator-api-1.0.1-SNAPSHOT.jar"]
HEALTHCHECK CMD curl -s --fail http://localhost:8080/addition/1/2/3 || exit 1

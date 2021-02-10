FROM adoptopenjdk/openjdk11

WORKDIR /usr/app

COPY target/*.jar /usr/app/

#RUN sh -c 'touch calculator-api-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","calculator-api-0.0.1-SNAPSHOT.jar"]

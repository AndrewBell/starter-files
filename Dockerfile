FROM openjdk:alpine

COPY build/libs/my-service-0.0.1-SNAPSHOT.jar /usr/src/app/

WORKDIR /usr/src/app/

CMD ["java", "-jar", "my-service-0.0.1-SNAPSHOT.jar"]

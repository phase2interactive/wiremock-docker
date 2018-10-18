FROM openjdk:8-alpine
LABEL maintainer="mattc@phase2online.com"
ARG VERSION

RUN mkdir /wiremock
WORKDIR /wiremock
ADD https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/$VERSION/wiremock-standalone-$VERSION.jar /wiremock/wiremock.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "wiremock.jar"]
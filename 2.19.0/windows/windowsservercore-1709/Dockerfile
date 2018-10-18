# escape=`
FROM openjdk:8-windowsservercore-1709
LABEL maintainer="mattc@phase2online.com"
ARG VERSION

RUN mkdir C:\wiremock
WORKDIR C:\wiremock
ADD https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/$VERSION/wiremock-standalone-$VERSION.jar C:\wiremock\wiremock.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "wiremock.jar"]
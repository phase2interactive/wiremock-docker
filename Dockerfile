FROM anapsix/alpine-java:8
LABEL maintainer="mattc@phase2online.com"
ARG VERSION

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

RUN mkdir /wiremock
WORKDIR /wiremock
RUN curl -sSL -o wiremock.jar https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/$VERSION/wiremock-standalone-$VERSION.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "wiremock.jar"]
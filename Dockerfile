FROM openjdk:8-jre-alpine
LABEL maintainer "tsgkdtp <tsgkadot@gmail.com>"

ADD run.sh /opt/run.sh

ENV SONAR_SCANNER_VERSION=3.0.3.778 \
    SONAR_PROJECT_KEY=my:project \
    SONAR_PROJECT_NAME="my project" \
    SONAR_PROJECT_VERSION=1.0 \
    SONAR_SOURCE=. \
    SONAR_SOURCE_ENCODING=UTF-8 \
    SONAR_HOST="http://localhost:9000" \
    SONAR_SCANNER_OPTS="-Xms512m" 

WORKDIR /opt

RUN apk add --no-cache wget && \
    wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip -q && \
    unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip -d /opt && \
    mv /opt/sonar-scanner-${SONAR_SCANNER_VERSION}-linux /opt/sonar-scanner && \
    sed -i 's/use_embedded_jre=true/use_embedded_jre=false/g' /opt/sonar-scanner/bin/sonar-scanner && \
    cd /usr/bin && \
    ln -s /opt/sonar-scanner/bin/sonar-scanner sonar-scanner && \
    rm -f /opt/asonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip && \
    chmod +x /opt/run.sh && \
    apk del wget

CMD /opt/run.sh

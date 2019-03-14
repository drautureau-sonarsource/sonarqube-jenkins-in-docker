FROM sonarqube:6.7.6-community

#RUN apt-get -y update && apt-get install -y jq

COPY check-running.sh $SONARQUBE_HOME/bin/

HEALTHCHECK --start-period=10s --interval=5s --timeout=5s --retries=5 \
  CMD ./bin/check-running.sh

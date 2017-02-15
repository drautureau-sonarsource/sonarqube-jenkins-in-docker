FROM jenkins:2.32.2

USER root

# Install maven package
ENV MAVEN_VERSION 3.2.5
RUN cd /usr/local; wget -q -O - http://mirrors.ibiblio.org/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xvfz - && \
    ln -sv /usr/local/apache-maven-$MAVEN_VERSION /usr/local/maven

USER jenkins

# Install plugins
#   jquery is needed by sonar plugin
RUN /usr/local/bin/install-plugins.sh mock-slave workflow-aggregator blueocean blueocean-pipeline-editor jquery

# Install SQ plugin
RUN cd /usr/share/jenkins/ref/plugins; wget -q https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/sonar/2.5/sonar-2.5.hpi

ADD JENKINS_HOME /usr/share/jenkins/ref

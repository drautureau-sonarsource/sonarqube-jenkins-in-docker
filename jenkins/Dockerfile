FROM jenkins/jenkins:2.150.3

USER root

# Install maven package
ENV MAVEN_VERSION 3.3.9
RUN cd /usr/local; wget -q -O - http://mirrors.ibiblio.org/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xvfz - && \
    ln -sv /usr/local/apache-maven-$MAVEN_VERSION /usr/local/maven

USER jenkins

# Install plugins
# jquery is needed by sonar plugin
RUN /usr/local/bin/install-plugins.sh mock-slave workflow-job workflow-aggregator git-userContent blueocean jquery

# Install SQ plugin
ARG ARTIFACTORY_USER=admin
ARG ARTIFACTORY_PASSWORD=admin
ENV SONAR_JENKINS_PLUGIN_VERSION=2.9.0.2176
ENV ARTIFACTORY_REPO=sonarsource
RUN curl -o "/usr/share/jenkins/ref/plugins/sonar-${SONAR_JENKINS_PLUGIN_VERSION}.hpi"  -LsS -u"${REPOX_USER}:${REPOX_PASSWORD}" "https://repox.jfrog.io/repox/${ARTIFACTORY_REPO}/org/jenkins-ci/plugins/sonar/${SONAR_JENKINS_PLUGIN_VERSION}/sonar-${SONAR_JENKINS_PLUGIN_VERSION}.hpi"
ADD JENKINS_HOME /usr/share/jenkins/ref

ADD src/main/jenkins /usr/share/jenkins/ref/userContent

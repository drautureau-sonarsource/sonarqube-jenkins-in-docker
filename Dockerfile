FROM jenkins:2.32.3

USER root

# Install maven package
ENV MAVEN_VERSION 3.2.5
RUN cd /usr/local; wget -q -O - http://mirrors.ibiblio.org/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xvfz - && \
    ln -sv /usr/local/apache-maven-$MAVEN_VERSION /usr/local/maven

USER jenkins

# Install plugins
#   jquery is needed by sonar plugin
RUN /usr/local/bin/install-plugins.sh mock-slave workflow-aggregator git-userContent blueocean jquery

# Install SQ plugin
RUN cd /usr/share/jenkins/ref/plugins; wget -q https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/sonar/2.6.1/sonar-2.6.1.hpi

ADD JENKINS_HOME /usr/share/jenkins/ref

ADD src/main/jenkins /usr/share/jenkins/ref/userContent

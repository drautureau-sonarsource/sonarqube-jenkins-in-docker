FROM jenkins:2.60.2

USER root

# Install maven package
ENV MAVEN_VERSION 3.3.9
RUN cd /usr/local; wget -q -O - http://mirrors.ibiblio.org/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xvfz - && \
    ln -sv /usr/local/apache-maven-$MAVEN_VERSION /usr/local/maven

USER jenkins

# Install plugins
# workflow-job:2.11 because last version (2.12) - at the time I am writting this commit - is not compliant with LTS version (2.46.2): requires 2.60
# jquery is needed by sonar plugin
RUN /usr/local/bin/install-plugins.sh mock-slave workflow-job:2.11 workflow-aggregator git-userContent blueocean jquery

# Install SQ plugin
RUN cd /usr/share/jenkins/ref/plugins; wget -q https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/sonar/2.6.1/sonar-2.6.1.hpi

ADD JENKINS_HOME /usr/share/jenkins/ref

ADD src/main/jenkins /usr/share/jenkins/ref/userContent

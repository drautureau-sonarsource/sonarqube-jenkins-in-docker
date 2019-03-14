Create a running multi-container Docker applications with
* Jenkins with Pipeline plugins and Blue Ocean available at <http://localhost:8080/blue/pipelines> with 
  * SonarQube plugin
  * Maven tool configured
  * Java tool configured
  * SonarQube server configured
  * SonarQube scanner tool configured
  * a project using Maven to build and scan: [Analyse-with-Maven](http://localhost:8080/blue/organizations/jenkins/Analyse-with-Maven/activity)
  * a project using Scanner: [Analyse-with-Scanner](http://localhost:8080/blue/organizations/jenkins/Analyse-with-Scanner/activity)
  * a project having parallel steps: [Parallel-steps](http://localhost:8080/blue/organizations/jenkins/Parallel-steps/activity)
* SonarQube available at <http://localhost:9000>

# Run 

* You need to have [Docker Compose](https://docs.docker.com/compose/) installed
* Add your Artifactory credentials to the environment: ```export ARTIFACTORY_USER=<GitHub username> && export ARTIFACTORY_PASSWORD=<Artifactory API key>```
* Run with ```docker-compose up```

Predifined projects are available in a the git repository hosted by the Jenkins container thanks to [Git userContent plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+userContent+plugin) (See <http://localhost:8080/userContent.git> for details)

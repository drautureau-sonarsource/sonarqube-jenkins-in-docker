Create a running multi-container Docker applications with
* Jenkins 2.19.3 with Pipeline plugins and Blue Ocean available at <http://localhost:8080/blue/pipelines> with 
  * SonarQube plugin installed
  * Maven tool preinstalled (version 3.2.5)
  * Java tool preinstalled (version 8)
  * 2 SonarQube installation
  * a SonarQube scanner tools installation
  * a project using Maven to build and scan: [Analyse-with-Maven](http://localhost:8080/blue/organizations/jenkins/Analyse-with-Maven/activity)
  * a project using Scanner: [Analyse-with-Scanner](http://localhost:8080/blue/organizations/jenkins/Analyse-with-Scanner/activity)
  * a project having parallel steps: [Parallel-steps](http://localhost:8080/blue/organizations/jenkins/Parallel-steps/activity)
  * a project analysing Jenkins source code: [Analyse-Jenkins](http://localhost:8080/blue/organizations/jenkins/Analyse-Jenkins/activity)
  * 2 projects (1 per SonarQube installation) using QalityGate step: [SONARJNKNS-275-1](http://localhost:8080/job/SONARJNKNS-275-1) and [SONARJNKNS-275-2](http://localhost:8080/job/SONARJNKNS-275-2)
* SonarQube available at <http://localhost:9000>

You need to have [Docker Compose](https://docs.docker.com/compose/) installed

Run with ```docker-compose up```

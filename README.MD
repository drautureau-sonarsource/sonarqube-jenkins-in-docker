Create a running multi-container Docker applications with
* Jenkins 2.19.3 (available at http://localhost:8080) with 
  * SonarQube plugin installed (compatible with pipeline) and all required plugins
  * Maven tool preinstalled (version 3.2.5)
  * Java tool preinstalled (version 8)
  * 1 SonarQube installation
  * 1 SonarQube scanner tools installation
  * an empty freestyle project
  * an empty pipeline project
  * a pipeline project using Maven to build and scan
  * a pipeline project using Scanner to scan
* an empty SonarQube (available at http://localhost:9000)

To use it you need to [install Docker Compose](https://docs.docker.com/compose/install/)

To run:
```docker-compose up```

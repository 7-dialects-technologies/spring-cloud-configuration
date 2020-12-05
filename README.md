# Spring Cloud Configuration Server
  Spring cloud config server provides the support to maintain the external cponfiguration in a centralized location. This repository having an implementation of Configuration server. We can simply clone and bring up the configuration server in few mins.
  
## Running configuration server 

### Spring boot 

To run the configuration server as Spring boot application

```
git clone https://github.com/7-dialects-technologies/spring-cloud-configuration.git

./gradlew bootRun

```

### Docker
```
docker run -p 8888:8888 7dialects/configuration-server:tagname
```
*tagname: it is a latest version of 7dialects configuration server

This will run the config server in port 8888. But it has a dummy configuration reposity configured to fetch the external configuration.

To override the properties, you can run your conf as below

```
docker run -p 9000:9000 7dialects/configuration-server:tagname  --server.port:9000
```





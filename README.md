# Spring Framework sample project
###### Spring Framework sample without Spring Boot

---

## Description
Sample project to demonstrate the usage of Spring Framework without Spring Boot

---

## Tech stack

#### Application
* Java 11 (no modules)
* Maven Wrapper 3.x
* Spring Framework
* Application server (Jetty / Undertow / Tomcat / WildFly / Netty)

---

## Build & run

#### Pre-requisites (*)
* Docker

(*) If you would like to use your application server installed locally, you have to manually deploy the generated war file

#### Build
* show dependencies

		make dependencies

* compile

		make clean compile

* package

		make clean package

#### Run

* run server

		make run

**PLEASE NOTE** This command will:
* package the application to be sure that the war file is properly created
* run a docker container based on the last alpine-based Jetty
* deploy the spring-framework-sample.war into the container

#### Test functionalities

* page
	
	open http://localhost:8080/spring-framework-sample/

* rest apis

		curl http://localhost:8080/spring-framework-sample/api

---

## TODOs
* sample of rest apis

---

## Links

#### Theory
/

#### Techs

###### DONE
* https://crunchify.com/simplest-spring-mvc-hello-world-example-tutorial-spring-model-view-controller-tips/

###### IN-PROG
/

###### TODO
* https://docs.spring.io/spring/docs/current/spring-framework-reference/web.html#spring-web

#### Issues
/

#### Repos
/

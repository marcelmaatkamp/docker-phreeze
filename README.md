# docker-phreeze

## Introduction video about Phreeze
[![phreeze](http://phreeze.com/assets/video-5DCZAqDo4zQ.jpg)](https://www.youtube.com/watch?v=5DCZAqDo4zQ)

This repository installs http://phreeze.com in a docker container running in apache with php5 with mysql drivers and modrewrite enabled. 

## Run a docker instance
```
$ docker run --name phreeze marcelmaatkamp/phreeze
```

## Example docker-compose.yml
Checkout the source code and modify to your needs and use the example docker-compose to start mysql and phreeze together:
```
$ git clone https://github.com/marcelmaatkamp/docker-phreeze.git && \
  cd docker-phreeze && \
  docker-compose up -d
```
and goto http://127.0.0.1/phreeze to view the demo site.

## Development
Use your own Dockerfile like this:
```
FROM marcelmaatkamp/phreeze
COPY src/ my_new_project
```
and start this container:
```
$ docker build -t my_new_project && docker run --name my_new_project my_new_project
```
and goto http://127.0.0.1/my_new_project to view it.

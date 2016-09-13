# phreeze in a docker container

## Introduction video about Phreeze
[![phreeze](http://phreeze.com/assets/video-5DCZAqDo4zQ.jpg)](https://www.youtube.com/watch?v=5DCZAqDo4zQ)

This repository installs http://phreeze.com in a docker container running in apache with php5 with mysql drivers and modrewrite enabled. 

## Run a docker instance
```
$ docker run --name phreeze -p 80:80 marcelmaatkamp/phreeze
```
and goto http://127.0.0.1/phreeze/builder/

## Example docker-compose.yml
Use the example docker-compose to start mysql and phreeze together:
```
$ git clone https://github.com/marcelmaatkamp/docker-phreeze.git && \
  cd docker-phreeze && \
  docker-compose up -d
```
and goto http://127.0.0.1//phreeze/builder/ to view the demo site with the connected mysql database.

## Development
Use phreeze to generate your site and place in into a seperate directory. Use your own Dockerfile to add these files in a new container:
```
FROM marcelmaatkamp/phreeze
COPY src/ my_new_project
```
and to view start this container:
```
$ docker build -t my_new_project . && \
  docker run --name my_new_project -p 80:80 my_new_project
```
and goto http://127.0.0.1/my_new_project to view it.

# docker-flask
This image is a boilerplate for any Flask application, configured with Docker.



### Base Docker Image
* [ubuntu:12.04](https://registry.hub.docker.com/_/ubuntu/)



### Installation

1. Git clone from [repo](https://github.com/Alafazam/docker-flask) .

```bash
git clone https://github.com/Alafazam/docker-flask
```

2. build using docker build -t flask-boilerplate .

```bash
docker build -t flask-boilerplate.
```


### Usage

1. starting without environment variables .

```bash
docker run -d -p 80:80 flask-boilerplate
```

2. starting with user and pass .

```bash
docker run -d -p -e user="USERNAME" -e pass="PASSWORD" 80:80 flask-boilerplate
```


After few seconds, open `http://<host>` to see the Flask app.

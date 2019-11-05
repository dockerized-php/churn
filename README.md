# Docker image for [churn-php](https://github.com/bmitch/churn-php)

[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

The image are based on [Alpine Linux](https://alpinelinux.org/) and built daily.

## Supported tags

- `0.4` [(0.4/Dockerfile)](https://github.com/dockerized-php/churn/blob/master/0.4/Dockerfile)
- `0.5` [(0.5/Dockerfile)](https://github.com/dockerized-php/churn/blob/master/0.5/Dockerfile)
- `1.0` [(1.0/Dockerfile)](https://github.com/dockerized-php/churn/blob/master/1.0/Dockerfile)
- `latest` [(latest/Dockerfile)](https://github.com/dockerized-php/churn/blob/master/latest/Dockerfile)

## How to use this image

### Install

Install the image:

```
docker pull dockerizedphp/churn
```

Or alternatively, pull a specific version:

```
docker pull dockerizedphp/churn:0.4
```

### Usage

We are recommend to use this image as an shell alias to access via short-command.
To use simply *churn-php* everywhere on CLI, add this line to your ~/.zshrc, ~/.bashrc or ~/.profile.

```
alias churn-php='docker run -ti -v $PWD:/app --rm dockerizedphp/churn:latest'
```

Otherwise you can use this command directly.

# Docker image for [churn-php](https://github.com/bmitch/churn-php)

[![Build Status](https://travis-ci.org/dockerized-php/churn.svg?branch=master)](https://travis-ci.org/dockerized-php/churn)

The image are based on [Alpine Linux](https://alpinelinux.org/) and built daily.

## Supported tags

- `0.4` [(0.4/Dockerfile)](https://github.com/dockerized-php/churn/blob/master/0.4/Dockerfile)
- `latest` [(latest/Dockerfile)](https://github.com/dockerized-php/churn/blob/master/latest/Dockerfile)

## How to use this image

### Install

Install the container:

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
alias churn-php='docker run -ti -v $PWD:/app --rm dockerizedphp/churn:latest run src'
```

Otherwise you can use this command directly.

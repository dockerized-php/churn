# Docker image for [churn-php](https://github.com/bmitch/churn-php)

[![Build Status](https://travis-ci.org/dockerized-php/churn.svg?branch=master)](https://travis-ci.org/dockerized-php/churn)

The image are based on [Alpine Linux](https://alpinelinux.org/) and built daily.
It also uses [tini](https://github.com/krallin/tini) as [init](https://en.wikipedia.org/wiki/Init).

## Supported tags

- `latest` [(latest/Dockerfile)](https://github.com/dockerized-php/churn/blob/master/latest/Dockerfile)

## How to use this image

### Install

Install the container:

```
docker pull dockerizedphp/churn
```

### Usage

```
docker run --rm -ti -v $(PWD):/app dockerizedphp/churn run src
```

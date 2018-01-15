# nginx-testkitchen

## Introduction

Repo to test some ansible code using test kitchen and Test Driven Development

## Nginx configuration

A simple Nginx HTTP/HTTPS Server delivering static content. Any certificates will be self-generated.

## Test to be performed

Some tests to check:

| Test | Description |
|------|-------------|
|1|Check configuration of Nginx container|
|2|Check Nginx installed and started|
|3|Check NTP is installed and configured/started|
|4|Check SSL/TLS configuration is enabled in Nginx|
|5|Check content is being served by Nginx|
|6|Application Test(s) TBD|

## TODO

TravisCI integration
Improve Test suite

[![Build Status](https://travis-ci.org/alstard/nginx-testkitchen.svg?branch=development)](https://travis-ci.org/alstard/nginx-testkitchen)
# nginx-testkitchen

## Introduction

Repo to test some ansible code using test kitchen and Test Driven Development

## Nginx configuration

A simple Nginx HTTP/HTTPS Server delivering static content. Any certificates will be self-generated.

## Test to be performed

Some tests to check:

| Test | Description | Status |
|------|-------------|--------|
|1|Check configuration of Nginx container|DONE|
|2|Check Nginx installed and started|DONE|
|3|Check NTP is installed and configured/started|DONE|
|4|Check SSL/TLS configuration is enabled in Nginx|DONE|
|5|Check content is being served by Nginx|....|
|6|Application Test(s) TBD|....|

## TravisCI Status

[![Build Status](https://travis-ci.org/alstard/nginx-testkitchen.svg?branch=development)](https://travis-ci.org/alstard/nginx-testkitchen)
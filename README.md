Node.js Builder Docker image
============================

[![GitHub release](https://img.shields.io/github/release/instrumentisto/node-builder-docker-image.svg)](https://hub.docker.com/r/instrumentisto/node-builder/tags)
[![Build Status](https://travis-ci.org/instrumentisto/node-builder-docker-image.svg?branch=master)](https://travis-ci.org/instrumentisto/node-builder-docker-image)
[![Docker Pulls](https://img.shields.io/docker/pulls/instrumentisto/node-builder.svg)](https://hub.docker.com/r/instrumentisto/node-builder)
[![GitHub link](https://img.shields.io/badge/github-link-blue.svg)](https://github.com/instrumentisto/node-builder-docker-image)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/instrumentisto/node-builder-docker-image/blob/master/LICENSE.md)

Docker image with [Node.js](https://nodejs.org) and some other tools (Git, Java)
for building projects.



## Overview

This image is intended to be used in project build scenarios, such as:
running [npm](https://www.npmjs.com), [Bower](https://www.npmjs.com),
[Gulp](http://gulpjs.com), [Grunt](http://gruntjs.com),
[webpack](https://webpack.github.io), etc.

It contains:
- `git` to pull remote Git repos for Bower and npm.
- `java` for [Google Closure-Compiler][1] to run.




[1]: https://www.npmjs.com/package/google-closure-compiler

# Jenkins CI/CD Pipeline

Simple Jenkins pipeline for building and deploying containerized applications.

## Pipeline Overview

This Jenkins pipeline automates the build process for the bookshelf application:

1. **Clone Repository** - Pulls source code from GitHub
2. **Build Container** - Creates Docker image from the application

## Prerequisites

- Jenkins server with Docker support
- Jenkins agent labeled `jenkins-agent`
- Docker installed on the agent

## Usage

1. Create a new Jenkins pipeline job
2. Point to this repository's `Simple-CICD/Jenkinsfile`
3. Run the pipeline

## Pipeline Configuration

The pipeline targets the [bookshelf application](https://github.com/MAHIRE-7/bookshelf.git) and builds a Docker image tagged as `bookshelf:latest`.
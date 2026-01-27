# Simple CI/CD Pipeline

Jenkins pipeline for automated building of containerized applications.

## Pipeline Stages

1. **Clone Repository** - Pulls bookshelf app from GitHub
2. **Build Container** - Creates Docker image tagged `bookshelf:latest`

## Requirements

- Jenkins server with pipeline support
- Jenkins agent labeled `jenkins-agent`
- Docker installed on agent node

## Setup

1. Create new Jenkins pipeline job
2. Configure SCM to point to this repository
3. Set pipeline script path to `Simple-CICD/Jenkinsfile`
4. Run the pipeline

## Target Application

Builds the [bookshelf application](https://github.com/MAHIRE-7/bookshelf.git) from the main branch.
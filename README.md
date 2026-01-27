# Jenkins CI/CD Project

Complete Jenkins setup with CI/CD pipeline and automated installation scripts.

## Project Structure

### Simple-CICD/
Jenkins pipeline for building containerized applications:
- Clones bookshelf application from GitHub
- Builds Docker image using Jenkinsfile

### shellscript-to-install-jenkins/
Automated installation scripts:
- `master.sh` - Sets up Jenkins master server
- `agent.sh` - Configures Jenkins agent with Docker

### A shellscript-to-install-jenkins/
Alternative agent installation script with enhanced Docker setup.

## Quick Start

1. **Setup Jenkins Master:**
   ```bash
   ./shellscript-to-install-jenkins/master.sh
   ```

2. **Setup Jenkins Agent:**
   ```bash
   ./shellscript-to-install-jenkins/agent.sh
   ```

3. **Deploy Pipeline:**
   - Create Jenkins job pointing to `Simple-CICD/Jenkinsfile`
   - Pipeline builds bookshelf application automatically

## Requirements

- Ubuntu/Debian systems
- sudo privileges
- Internet connection
- Jenkins agent labeled `jenkins-agent`
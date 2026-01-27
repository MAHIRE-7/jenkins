# Jenkins Agent Installation Script

Automated setup script for Jenkins agent nodes with Docker support.

## What it does

- Installs Java 21 JRE (required for Jenkins agent)
- Installs Docker for containerized builds
- Configures user permissions for Docker access

## Usage

```bash
chmod +x agent.sh
./agent.sh
```

## Requirements

- Ubuntu/Debian system
- sudo privileges
- Internet connection

## After Installation

1. Log out and back in for Docker group changes
2. Connect agent to Jenkins master server
3. Agent ready for Docker-based pipeline jobs
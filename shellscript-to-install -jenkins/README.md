# Jenkins Installation Scripts

Automated shell scripts for setting up Jenkins master and agent nodes on Ubuntu/Debian systems.

## Scripts

### master.sh
Installs Jenkins master server with:
- Java 21 JRE
- Jenkins from official repository
- Displays initial admin password

### agent.sh  
Installs Jenkins agent with:
- Java 21 JRE
- Docker for containerized builds
- Proper user permissions

## Usage

```bash
# On master node
chmod +x master.sh
./master.sh

# On agent node  
chmod +x agent.sh
./agent.sh
```

## Prerequisites

- Ubuntu/Debian system
- sudo privileges
- Internet connection

## Post-Installation

1. Access Jenkins at `http://your-server:8080`
2. Use displayed admin password for initial setup
3. Log out/in on agent nodes for Docker permissions
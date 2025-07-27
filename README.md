# Service Orchestration

This project contains Docker Compose configuration for service orchestration with web-based management interface.

## Requirements

- Docker
- Docker Compose

## Installation and Setup

1. Copy all project files to your working directory
2. Ensure you have a `requirements.txt` file with all necessary dependencies
3. Start all services:

```bash
docker-compose up -d
```

## Portainer Management

After starting the services, Portainer will be available at:
```
http://[server-ip-address]:9000
```

On first Portainer login:
1. Create an administrator account
2. Select "Local Docker Environment"
3. Now you can manage all containers through the web interface

## Available Services

- llm_server (port 8001)
- import_meteo (port 8002)
- geoeco (port 8003)

## Command Line Management

- Start all services:
```bash
docker-compose up -d
```

- Stop all services:
```bash
docker-compose down
```

- View logs:
```bash
docker-compose logs -f [service_name]
```

- Restart specific service:
```bash
docker-compose restart [service_name]
```

## Automatic Updates

The project includes Watchtower for automatic container updates. Updates are checked daily.

## Security

- Portainer configured with limited privileges
- All services isolated in separate containers
- Uses unless-stopped restart policy 
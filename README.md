# phase2online/wiremock

## Description

A lightweight containerization of [WireMock](http://wiremock.org) in standalone mode

## Basic Usage
Place your WireMock mappings and files in separate folders, and mount those into the container as volumes. WireMock is exposed on port 8080 by default, you can use docker settings to remap this.
```bash
docker run -d \
  -p 80:8080 \
  -v mappings:/wiremock/mappings \
  -v files:/wiremock/__files \
  phase2online/wiremock
```

## Advanced Usage
If your project connects to multiple different mocked services, then [Docker Compose](https://docs.docker.com/compose/) is your friend.

#### Project layout:
```
sample/
├── docker-compose.yml
├── service1/
│   ├── files/
│   └── mappings/
└── service2/
    ├── files/
    └── mappings/
```

#### docker-compose.yml:
```yaml
version: '3'

services:
  service1:
    image: phase2online/wiremock
    volumes:
      - service1/files:/wiremock/__files
      - service1/mappings:/wiremock/mappings
    ports:
      - 8001:8080
    
  service2:
    image: phase2online/wiremock
    volumes:
      - service2/files:/wiremock/__files
      - service2/mappings:/wiremock/mappings
    ports:
      - 8002:8080  
```

## Credits
Inspired by and based on work by [Ekino](https://github.com/ekino/docker-wiremock)
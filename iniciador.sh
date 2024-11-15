#!/bin/bash
apt update

apt install docker.io docker-compose

echo "Construyendo la imagen..."
docker-compose build
echo "Iniciando el contenedor..."
docker-compose up -d

#!/bin/bash
echo "Uso de recursos del contenedor:"
docker stats --no-stream --format "table {{.Name}}\t{{.MemUsage}}\t{{.BlockIO}}"

echo "RAM del host:"
free -h


docker-compose -f $PWD/docker-compose.yaml -p docker-project down -v
docker-compose -f $PWD/docker-compose.yaml -p docker-project up -d
docker logs -f flaskContainer

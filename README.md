# aws-sam-api

## Starth

touch .env
docker-compose build --force-rm
dokcer-compose up


# Test
curl -H 'Content-Type:application/json' http://localhost:3000 -X POST -d "hogegeho"

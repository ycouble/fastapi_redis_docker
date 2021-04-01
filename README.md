# Simple example of redis queue with fastAPI and a docker compose to deploy easily

## Usage
Start the docker stack
```
docker build -t myproj:latest .
docker-compose -f docker-compose.yml up
```

Then you can send any number of post requests to the queue

```
curl -v -X POST http://localhost:5057/groups/group1 -d '{"owner": "foo", "description": "bar"}'
```


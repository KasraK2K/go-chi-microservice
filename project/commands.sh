# Create image from services and push to docker hub
    # Explain
        docker build -f <path to our docker file> -t <docker hub username>/<image name>:<version> .
        docker push <docker hub username>/<image name>:<version>

    # Example
        docker build -f logger-service.dockerfile -t kasrak2k/logger-service:1.0.0 .
        docker push kasrak2k/logger-service:1.0.0


# Create docker services using swarm
    # 1. create swarm file (eq: swarm.yml)
    # 2. Deploy services
        # Explain
            docker stack deploy -c <our swarm file name> <our app name>
        # Example
            docker stack deploy -c swarm.yml goapp

# List of services
docker service ls

# Remove one or more services
docker service rm <our service id>

# Scaling services
docker service scale <service name>=<number of replica>
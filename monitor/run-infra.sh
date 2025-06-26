HOSTNODE_IP=$(ipconfig getifaddr en0)
export HOSTNODE_IP
docker compose up -d --force-recreate --remove-orphans

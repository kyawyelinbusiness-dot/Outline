FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl sudo gnupg lsb-release && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Run Outline server installer
RUN bash -c "$(curl -sS https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)" || true

# Expose typical Outline ports
EXPOSE 80 443 1024-65535

CMD ["sleep", "infinity"]

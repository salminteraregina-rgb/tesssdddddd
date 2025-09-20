FROM mcr.microsoft.com/devcontainers/python:3.11

# Install dependencies
RUN apt-get update && apt-get install -y git

# Copy setup script from .devcontainer folder
COPY setup.sh /tmp/setup.sh
RUN chmod +x /tmp/sup.sh

# Set working directory
WORKDIR /workspace

# Run setup on container start
CMD ["/bin/bash", "-c", "/tmp/setup.sh && tail -f /dev/null"]

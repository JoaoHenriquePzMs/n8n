# Start from the official n8n image
FROM n8n-io/n8n:latest

# Switch to the root user to install packages
USER root

# Add your community nodes here.
# For each node, add a new "RUN npm install -g <package-name>" line.
# Example:
RUN npm install -g n8n-nodes-discord-trigger

# Switch back to the non-root 'node' user to run n8n securely
USER node

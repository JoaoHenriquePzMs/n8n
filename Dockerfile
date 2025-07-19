# Start from the official n8n image
FROM n8n-io/n8n:latest

# Switch to the root user to install packages globally
USER root

# Install the specific Discord trigger node
RUN npm install -g n8n-nodes-discord-trigger

# Switch back to the non-root 'node' user to run n8n securely
USER node

FROM node:22-slim
RUN apt-get update && apt-get install -y git
RUN npm install -g openclaw@latest
EXPOSE 8080
CMD ["openclaw", "gateway", "--port", "8080", "--allow-unconfigured"]

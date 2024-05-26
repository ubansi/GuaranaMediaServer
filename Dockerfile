FROM node:18-slim
USER root

RUN apt-get update -y && apt-get install -y openssl
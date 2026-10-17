FROM node:22.23.3-bookworm-slim
ENV NODE_ENV=production
WORKDIR /app
COPY Monitoring-2/package.json Monitoring-2/package-lock.json ./
RUN npm ci --omit=dev && npm cache clean --force
COPY --chown=node:node Monitoring-2/index.js Monitoring-2/logger.js ./
USER node
EXPOSE 10000
CMD ["node", "index.js"]

FROM node:8

RUN mkdir -p /npm && \
  mkdir -p /application

WORKDIR /npm
COPY ["package.json", "package.json"]
RUN npm install --development --no-optional

# Add the code and copy over the node_modules-catalog
WORKDIR /application
RUN cp -a /npm/node_modules /application && \
  rm -rf /npm

COPY ["package.json", "package.json"]
COPY ["app.js", "app.js"]

ENV NODE_PATH /application

EXPOSE 3001

ENTRYPOINT ["node", "app.js"]

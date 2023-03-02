FROM node:16@sha256:8ef06c513538040a988ac7731afa8ad8b1135cfe5d8b6ad78489d80c6f6c0137

WORKDIR /src

ADD ["package.json", "yarn.lock", "./"]
RUN yarn install --network-timeout 100000
ADD main.js .
ENTRYPOINT [ "sh", "-c", "node main.js $ZIP" ]
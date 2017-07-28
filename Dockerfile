FROM node:alpine
RUN apk add -t .gyp --no-cache git python g++ make nano curl
RUN npm install -g truffle solc truffle-config truffle-expect ethereumjs-testrpc ethereum-web3-plus
RUN mkdir -p /code
VOLUME /code
WORKDIR /code
CMD sh

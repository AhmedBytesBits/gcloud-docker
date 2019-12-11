# using node 8.1.1 the latest supported by firebase
# using alpine to boost CI/CD pipline by using the lightweight linux alpine

FROM node:8.16.2-alpine3.9

USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

# update npm to patch any vulnerbalities
RUN npm i npm@latest -g

# intall ESlint
RUN npm install -g eslint

# install Firebase CLI
RUN npm install -g firebase-tools@7.6.2

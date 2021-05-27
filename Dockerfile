FROM alpine:latest

RUN apk add --update npm
#RUN apk add --update xsel


COPY viewer viewer
COPY examples examples
COPY package.json .
COPY yarn.lock .

RUN npm run init-repo

EXPOSE 5000
CMD ["npm", "start"]


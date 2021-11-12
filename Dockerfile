FROM node:16-alpine

ENV WORKDIR /opt/wat
RUN mkdir -p ${WORKDIR}
WORKDIR $WORKDIR
COPY . .

RUN npm install

ENV NODE_ENV production

ENV PORT 5000
EXPOSE $PORT

CMD ["npm", "start"]
FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./ 

RUN npm install

COPY . .

ENV PORT=3000

CMD ["npm", "start"]

ENV MODEL_URL=https://storage.googleapis.com/dicoding-submission-alfiansyah/submission-model/model.json

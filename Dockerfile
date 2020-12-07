FROM node:lts
COPY package.json .
COPY tsconfig.json .
COPY .env .
RUN npm install
COPY src .
COPY prisma .
CMD ["npm", "run", "ts-node", "src/index.ts"]
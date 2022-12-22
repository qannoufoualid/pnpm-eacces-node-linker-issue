FROM node:16

COPY package.json pnpm-lock.* ./

RUN npm set node-linker hoisted && npm set shamefully-hoisted true

RUN npm install -g pnpm@7.17.0

RUN pnpm install 

#Step1 : Get Dependencies, Build React App
FROM node:alpine3.18 as build
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
# RUN npm run build

# # Step 2: Run App using Server
# FROM nginx:1.23-alpine
# WORKDIR /usr/share/nginx/html
# RUN rm -rf *
# COPY --from=build /app/build .
# EXPOSE 8989
CMD ["npm", "start"]
# ENTRYPOINT ["nginx", "-g", "daemon off;"]

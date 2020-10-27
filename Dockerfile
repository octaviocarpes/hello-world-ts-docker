FROM node:14-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY . /app


# If you are building your code for production
# RUN npm ci --only=production
RUN yarn install --frozen-lockfile

# Bundle app source

EXPOSE 8080
CMD [ "yarn", "start" ]
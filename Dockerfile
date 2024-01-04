# alpine is a Linux Server.
FROM node:lts-alpine


# Add all the files to the app folder inside a container.
# Slash (/) after the folder name will make sure it creates a folder if it does not already exist.
# Syntax - COPY src dest
COPY package.json /app/
COPY src /app/src/
COPY public /app/public/


# Change the directory to app folder
WORKDIR /app


# Install NPM
RUN npm install


# Start the server
CMD ["npm", "start"]
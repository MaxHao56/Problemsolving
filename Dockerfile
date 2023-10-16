# Getting the offical node.js image
FROM Node: 14

# Working directory are are for setting the directory inside of the container therefore doesn't affect overall project structure 
WORKDIR /CISD-Frontend

# Copying the directory using regular expression from ./ which means the root directory
COPY package*.json ./


# Installing application dependencies
RUN npm install

# And copying the rest of the codes to the directory
COPY ..

# building the npm application with build
RUN npm run build


# And the exposing portal to 3000
EXPOSE 3000


# I'm assuming here needs change in the json file with command lines since I only have run dev
CMD ['npm','start']







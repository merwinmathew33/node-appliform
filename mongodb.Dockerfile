# Use the official MongoDB image as the base image
FROM mongo:4.2.8-bionic

# Set the working directory in the container to /data/db
WORKDIR /data/db

# Expose the MongoDB port
EXPOSE 27017

# Start the MongoDB service
CMD ["mongod"]




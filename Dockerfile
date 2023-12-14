# Use an official Salesforce DX image as the base image
FROM salesforce/cli:2.18.6-slim

# Set the working directory to the Salesforce project directory
WORKDIR /app

# Copy Salesforce project files into the container
COPY . .

# Install Salesforce project dependencies (if needed)
# RUN sfdx force:source:push

# Specify the Salesforce project directory
ENV SFDX_PROJECT_DIR=/app

# Expose any necessary ports
EXPOSE 8080

# Specify the command to run your Salesforce project (you can customize this)
CMD ["sfdx", "version"]


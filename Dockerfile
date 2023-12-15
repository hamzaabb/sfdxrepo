FROM salesforce/cli:2.18.6-slim

# Set the working directory to the Salesforce project directory
WORKDIR /app

# Create a user and set ownership
RUN adduser --disabled-password --gecos '' jenkins
RUN chown -R jenkins:jenkins /app

# Switch to the newly created user
USER jenkins

# Copy Salesforce project files into the container
COPY . .

# Specify the Salesforce project directory
ENV SFDX_PROJECT_DIR=/app

# Expose any necessary ports
EXPOSE 8080

# Specify the command to run your Salesforce project (you can customize this)
CMD ["sfdx", "version"]

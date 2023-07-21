# Use an official base image (Ubuntu in this case)
FROM ubuntu

# Set the working directory inside the container
WORKDIR /app

# Copy the HTML website template files to the container
COPY . /app

# Install a simple HTTP server (e.g., Python's HTTP server)
RUN apt-get update && apt-get install -y python3
RUN apt-get clean
EXPOSE 8000

# Set the command to run the HTTP server
CMD ["python3", "-m", "http.server", "8000"]


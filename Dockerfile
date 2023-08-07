# Use the official Go image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Go/Gin application source code into the container
COPY . .

# Build the Go/Gin application
RUN go mod download
RUN go build -o app

# Set the entry point command to run the application
CMD ["./app"]

# Expose port 3000 (or any other port you choose) for your Go/Gin application
EXPOSE 3000

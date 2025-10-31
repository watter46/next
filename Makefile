# Makefile

# Define variables
APP_NAME=next
DOCKER_IMAGE=${APP_NAME}:latest

# Build the application
build:
	docker build -t $(DOCKER_IMAGE) .

# Run the application
run:
	docker-compose up

# Stop the application
stop:
	docker-compose down

# Clean up the Docker images
clean:
	docker rmi $(DOCKER_IMAGE)

# Install dependencies
install:
	pnpm install

# Run linting
lint:
	pnpm eslint .

# Run formatting
format:
	pnpm prettier --write .

# Run tests
test:
	pnpm test

# Help command
help:
	@echo "Makefile commands:"
	@echo "  build    - Build the Docker image"
	@echo "  run      - Run the application using Docker Compose"
	@echo "  stop     - Stop the application"
	@echo "  clean    - Remove the Docker image"
	@echo "  install   - Install dependencies"
	@echo "  lint     - Run ESLint"
	@echo "  format   - Run Prettier"
	@echo "  test     - Run tests"
	@echo "  help     - Show this help message"
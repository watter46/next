# Makefile for Next.js Development

.PHONY: help up down restart logs build dev install clean lint format test

# Docker Compose commands
up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f next

build:
	docker compose build

# Development commands (inside container)
dev:
	docker compose exec next pnpm dev

install:
	docker compose exec next pnpm install

# Code quality
lint:
	docker compose exec next pnpm lint

format:
	docker compose exec next pnpm format

# Testing
test:
	docker compose exec next pnpm test

# Utility commands
clean:
	docker compose down -v
	rm -rf .next node_modules

shell:
	docker compose exec next /bin/bash

ps:
	docker compose ps

# Help command
help:
	@echo "Next.js Development Makefile Commands:"
	@echo ""
	@echo "Docker Compose:"
	@echo "  make up       - Start containers in detached mode"
	@echo "  make down     - Stop and remove containers"
	@echo "  make restart  - Restart containers"
	@echo "  make logs     - Show container logs"
	@echo "  make build    - Build Docker images"
	@echo ""
	@echo "Development:"
	@echo "  make dev      - Start Next.js dev server"
	@echo "  make install  - Install dependencies"
	@echo ""
	@echo "Code Quality:"
	@echo "  make lint     - Run ESLint"
	@echo "  make format   - Run Prettier"
	@echo ""
	@echo "Testing:"
	@echo "  make test     - Run tests"
	@echo ""
	@echo "Utility:"
	@echo "  make clean    - Clean up containers, volumes, and build artifacts"
	@echo "  make shell    - Access container shell"
	@echo "  make ps       - Show running containers"
	@echo "  make help     - Show this help message"
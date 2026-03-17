# Hello World Node.js App (Dockerized)

This is a minimal **Node.js “Hello World”** application packaged inside a Docker container.
It runs a simple HTTP server that responds with:
Hello World

## GitHub Workflow: Build & Push to Amazon ECR

This project includes a GitHub Actions workflow that automatically builds and pushes the Docker image to Amazon ECR whenever changes are made inside the app/ directory.
The workflow:

Uses GitHub OIDC to securely authenticate to AWS (no access keys needed).
Builds the Docker image using the updated source code.
Tags the image with the short commit SHA for traceability.
Pushes the image to your ECR repository:

```
128955061512.dkr.ecr.us-east-2.amazonaws.com/hello-world
```
---

## Project Structure
```
.
├── app/
│   └── index.js
├── Dockerfile
└── README.md
```

## Build the Docker Image

Run this command in the directory containing the `Dockerfile`:

```bash
docker build -t hello-node .
```

## Run The container

Run this command:

```bash
docker run --rm -p 3000:3000 hello-node
```

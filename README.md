# Java App CI/CD Pipeline

## Introduction
Welcome to my Java App's CI/CD pipeline! This README provides an overview of our automated pipeline designed specifically for streamlining the build, test, and deployment process.

## Pipeline Workflow

### Build and Test
- **Automated Build**: Triggered on each push to the `main` branch.
- **Testing**: Executes unit tests to ensure code reliability.

### Docker
- **Image Creation**: Create a Docker image from the updated code.
- **Registry Push**: Uploads the image to Docker Hub with two tags: version and 'latest'.

### Infrastructure Management
- **Terraform Integration**: Handles AWS resources.

## Manual Triggers
- **Custom Runs**: You can manually trigger the pipeline via GitHub Actions.


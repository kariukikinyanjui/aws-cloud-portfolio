#!/bin/bash
echo "Starting deployment to LocalStack..."

# Ensure we are in the infrastructure directory
cd infrastructure

# Initialize Terraform
echo "Initializing Terraform..."
tflocal init

# Apply Terraform
echo "Applying Infrastructure..."
tflocal apply -auto-approve

echo "Deployment Complete!"

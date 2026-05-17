#!/bin/bash

set -e

echo "Running Terraform Plan..."

terraform plan -out=tfplan
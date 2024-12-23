#!/bin/bash

# Script to update CUDA drivers on Azure Machine Learning GPU Compute Instances

echo "Starting CUDA drivers update..."

# Step 1: Install the specific version of PyTorch with CUDA support
pip install torch==2.3.1+cu121 --index-url https://artifactory.sofa.dev/artifactory/api/pypi/pytorch-remote/simple/

if [ $? -ne 0 ]; then
  echo "Error: Failed to install PyTorch with CUDA support."
  exit 1
fi

echo "CUDA drivers updated successfully."

# Step 2: Verify the installation
echo "Verifying the installation..."

python - <<EOF
import torch

print("PyTorch Version:", torch.__version__)
print("CUDA Available:", torch.cuda.is_available())
print("CUDA Version:", torch.version.cuda)
EOF

if [ $? -ne 0 ]; then
  echo "Error: Failed to verify the CUDA installation."
  exit 1
fi

echo "Verification complete. CUDA drivers update and installation successful!"

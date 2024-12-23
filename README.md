# Updating CUDA Drivers on Azure Machine Learning Studio GPU Compute Instances

This document provides step-by-step instructions on how to update the CUDA drivers on your GPU compute instances in Azure Machine Learning Studio.

## Prerequisites

Before proceeding, ensure you have the following:
- Access to the Azure Machine Learning Studio workspace.
- The necessary permissions to execute commands on the compute instance.

## Instructions

### Step 1: Open Azure Machine Learning Studio

1. Navigate to [Azure Machine Learning Studio](https://ml.azure.com/).
2. Sign in with your Azure credentials.

### Step 2: Access Your Compute Instances

1. In the Azure Machine Learning Studio, go to the **Compute** section.
2. Select the **Compute Instances** tab.

### Step 3: Start the Compute Instance

1. If your compute instance is not already running, start it by selecting the instance and clicking the **Start** button.

### Step 4: Open a Terminal Session

1. Once the compute instance is running, open a terminal session by selecting the instance and clicking the **Terminal** button.

### Step 5: Update the CUDA Drivers

1. In the terminal session, execute the following command to update the CUDA drivers:

    ```bash
    %pip install torch==2.3.1+cu121 --index-url ## include link to repo
    ```

### Step 6: Verify the Installation

1. After the installation is complete, you can verify the CUDA drivers update by running a simple PyTorch script to check the CUDA version.

    ```python
    import torch
    print(torch.__version__)
    print(torch.cuda.is_available())
    print(torch.version.cuda)
    ```

    This script should confirm that the PyTorch version is `2.3.1` and the CUDA version is `12.1`.

## Conclusion

You have successfully updated the CUDA drivers on your GPU compute instance in Azure Machine Learning Studio. If you encounter any issues, please refer to the official Azure and PyTorch documentation or contact your system administrator for further assistance.


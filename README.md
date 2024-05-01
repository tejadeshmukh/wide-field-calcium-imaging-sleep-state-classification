# wide-field-calcium-imaging-sleep-state-classification
Automated sleep state classification using deep learning and multiplex visibility graphs (MVGs) on wide-field calcium imaging (WFCI) data from mice.

## Project Description
This project aims to automate the classification of sleep states—wakefulness, non-REM (NREM), and REM—using wide-field calcium imaging (WFCI) data in mice. By leveraging deep learning techniques and the creation of multiplex visibility graphs (MVG), the project bypasses traditional methods that require EEG and EMG recordings, providing a non-invasive alternative that enhances both the accuracy and efficiency of sleep state analysis.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Code Structure](#code-structure)

## Installation
To set up the project for development and testing on your local machine, follow these steps:
1. Clone the repository:
     git clone https://github.com/tejadeshmukh/wide-field-calcium-imaging-sleep-state-classification.git
2. Navigate to the cloned directory and install the required Python packages:
3. For MATLAB scripts, ensure MATLAB is installed and configured appropriately on your system.

## Usage
To use this project, run the scripts located in the `image_classification` and `MVG_creation` directories:
- For generating MVGs, execute MATLAB script  "exa.m"  from the `MVG_creation` directory.
- To classify sleep states based on the generated MVGs using a CNN model, run the Jupyter notebooks in the `image_classification` directory.


## Code Structure
- `image_classification/`: Contains Jupyter notebooks for data loading, exploratory data analysis, and the CNN model.
- `MVG_creation/`: Contains MATLAB scripts to create Multiplex Visibility Graphs from wide-field calcium imaging data.


   

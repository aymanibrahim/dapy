## Quick Start

The workshop code is available as [Jupyter notebooks](https://github.com/aymanibrahim/dapy/tree/master/notebooks). You can run the notebooks in the cloud (no installation required) by clicking the "launch binder" button:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/aymanibrahim/dapy/master)

# Why
For people who struggle to start in data analysis with Python

# Description
This hands-on in-person workshop is based on 
[Data Analysis with Python Course by IBM Cognitive Class](https://cognitiveclass.ai/courses/data-analysis-python/)


Learn how to analyze data using multi-dimensional arrays in NumPy and manipulate DataFrames in pandas using Jupyter-based environment.


# [Outline](https://github.com/aymanibrahim/dapy/blob/master/notebooks/00_Outline.ipynb)
The workshop will cover core topics:

## [01 Intro](https://github.com/aymanibrahim/dapy/blob/master/notebooks/01_Intro.ipynb)
- Understanding the Domain
- Understanding the Dataset
- Python package for data science
- Importing and Exporting Data in Python
- Basic Insights from Datasets

## [02 Data Wrangling](https://github.com/aymanibrahim/dapy/blob/master/notebooks/02_Data_Wrangling.ipynb)
- Identify and Handle Missing Values
- Data Formatting
- Data Normalization Sets
- Binning
- Indicator variables

## [03 EDA](https://github.com/aymanibrahim/dapy/blob/master/notebooks/03_EDA.ipynb)

- Descriptive Statistics
- Basic of Grouping
- ANOVA
- Correlation

## [04 Model Development](https://github.com/aymanibrahim/dapy/blob/master/notebooks/04_Model_Development.ipynb)

- Simple and Multiple Linear Regression
- Model Evaluation Using Visualization
- Polynomial Regression and Pipelines
- R-squared and MSE for In-Sample Evaluation
- Prediction and Decision Making

## [05 Model Evaluation](https://github.com/aymanibrahim/dapy/blob/master/notebooks/05_Model_Evaluation.ipynb)

- Model Evaluation
- Over-fitting, Under-fitting and Model Selection
- Ridge Regression
- Grid Search
- Model Refinement

# Prerequisite
- [Python for Data Science Workshop](https://github.com/aymanibrahim/pyds)

# Pre-workshop 

You will need a laptop that can access the internet 

## 1: Installation
Install miniconda or install the (larger) Anaconda distribution

[Install Python 3.7 using Miniconda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html)

OR [Install Python 3.7 using Ananconda](https://www.anaconda.com/distribution/)

## 2: Setup

### 2.1: Download workshop code & materials
Clone the repository
```
git clone git@github.com:aymanibrahim/dapy.git
```
OR [Download the repository as a .zip file](https://github.com/aymanibrahim/dapy/archive/master.zip)

### 2.2: Change directory to pyds
Change current directory to **dapy** directory
```
cd dapy
```
### 2.3: Install Python with required packages
Install Python 3.7 with the required packages into an environment named _dapy_  as per [environment.yml](https://github.com/aymanibrahim/dapy/blob/master/environment.yml) YAML file.
```
conda env create -f environment.yml
```
When conda asks if you want to proceed, type "y" and press Enter.

## 3: Activate environment
Change the current default environment (_base_) into _dapy_ environment.
```
conda activate dapy
```

## 4: Install & Enable ipywidgets extentions

Enable ipywidgets Jupyter Notebook extension

```
jupyter contrib nbextension install --user
jupyter nbextension enable --py widgetsnbextension
jupyter nbextension enable python-markdown/main

# Notebooks w/ extensions that auto-run code must be "trusted" to work the first time
jupyter trust ./notebooks/05_Model_Evaluation.ipynb
```

Install ipywidgets JupyterLab extension
```
jupyter labextension install @jupyter-widgets/jupyterlab-manager
```

Enable  widgetsnbextension
```
jupyter nbextension enable --py widgetsnbextension --sys-prefix
```


## 5: Check installation
Use [check_environment.py](https://github.com/aymanibrahim/dapy/blob/master/check_environment.py) script to make sure everything was installed correctly, open a terminal, and change its directory (cd) so that your working directory is the workshop directory _dapy_ you cloned or downloaded. Then enter the following:
```
python check_environment.py
```
If everything is OK, you will get the following message:
> Your workshop environment is set up

## 6: Start JupyterLab
Start JupyterLab using:
```
jupyter lab
```
JupyterLab will open automatically in your browser.

You may access JupyterLab by entering the notebook server’s URL into the browser.

## 7: Stop JupyterLab
Press **CTRL + C** in the terminal to stop JupyterLab.

## 8: Deactivate environment
Change the current environment (_dapy_) into the previous environment.
```
conda deactivate
```

# Workshop Instructor
## Ayman Ibrahim, PMP

- [LinkedIn](https://www.linkedin.com/in/aymanibrahim/)
- [Kaggle](https://www.kaggle.com/aymani)
- [GitHub](https://github.com/aymanibrahim)
- [Twitter](https://twitter.com/AymanIbrahim)
- [Facebook](https://www.facebook.com/ayman.ibrahim.awad)

# References
- [Python: Programming language](https://www.python.org)
- [Conda: Package and environment manager](https://conda.io/en/latest/)
- [Anaconda: Python distribution](https://www.anaconda.com/distribution/)
- [Miniconda: Minimal installer for conda](https://conda.io/en/latest/miniconda.html)
- [NumPy: Fundamental package for scientific computing with Python](https://numpy.org)
- [Matplotlib: Python 2D plotting library](https://matplotlib.org)
- [seaborn: Statistical Data Visualization](https://seaborn.pydata.org)
- [pandas: Python data analysis library](https://pandas.pydata.org)
- [scikit-learn: Machine Learning in Python](https://scikit-learn.org/stable/index.html)
- [Jupyter Notebook: Web application to create documents with code, equations, visualizations and text](https://jupyter.org/)
- [JupyterLab: Web-based development environment for Jupyter Notebooks](https://jupyter.org/)
- [Python for Data Science: Course by IBM Cognitive Class](https://cognitiveclass.ai/courses/python-for-data-science/)
- [Data Analysis with Python: Course by IBM Cognitive Class](https://cognitiveclass.ai/courses/data-analysis-python/)

# Contributing
Thanks for your interest in contributing! There are many ways to contribute to this project. Get started [here](https://github.com/aymanibrahim/dapy/blob/master/CONTRIBUTING.md).

# License

## Workshop Code
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Workshop Materials

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a>

<span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">*Data Analysis with Python Workshop*</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/aymanibrahim" property="cc:attributionName" rel="cc:attributionURL">Ayman Ibrahim</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.  Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://cognitiveclass.ai/courses/data-analysis-python/" rel="dct:source">IBM Cognitive Class Data Analysis with Python </a> by <a href="https://www.linkedin.com/in/joseph-s-50398b136/"> Joseph Santarcangelo, PhD.</a> and <a href="https://www.linkedin.com/in/mahdi-noorian-58219234/"> Mahdi Noorian, PhD.</a>

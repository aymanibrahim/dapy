![](./images/01_Intro/01_problem/dapy-1.png)

# Why
For people who struggle to start in data analysis with Python

# Description
![](./images/01_Intro/01_problem/dapy-2.png)

This hands-on in-person workshop is based on 
[Data Analysis with Python Course by IBM Cognitive Class](https://cognitiveclass.ai/courses/course-v1:CognitiveClass+DA0101EN+v2)


Learn how to prepare data for analysis, perform simple statistical analyses, create meaningful data visualizations, predict future trends from data using Jupyter-based environment.


# [Outline](https://github.com/aymanibrahim/dapy/blob/master/notebooks/00_Outline.ipynb)
The workshop will cover core topics:

## [01 Intro](https://github.com/aymanibrahim/dapy/blob/master/notebooks/01_Intro.ipynb) [![Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aymanibrahim/dapy/blob/master/notebooks/01_Intro.ipynb)

Problem            |  Attributes | Types
:-------------------------:|:-------------------------:|:-------------------------:
![](./images/01_Intro/01_problem/01_problem.png)  |  ![](./images/01_Intro/02_data_analysis/05_attributes.png)|  ![](./images/01_Intro/05_insights/01_types.png)

- Understanding the Domain
- Understanding the Dataset
- Python package for data science
- Importing and Exporting Data in Python
- Basic Insights from Datasets

## [02 Data Wrangling](https://github.com/aymanibrahim/dapy/blob/master/notebooks/02_Data_Wrangling.ipynb) [![Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aymanibrahim/dapy/blob/master/notebooks/02_Data_Wrangling.ipynb)


Distribution            |  Bins | Histogram
:-------------------------:|:-------------------------:|:-------------------------:
![](./figs/02_Wrangling/horsepower_distribution.png)  |  ![](./figs/02_Wrangling/horsepower_bins.png)|  ![](./figs/02_Wrangling/horsepower_histogram.png)

- Identify and Handle Missing Values
- Data Formatting
- Data Normalization Sets
- Binning
- Indicator variables

## [03 EDA](https://github.com/aymanibrahim/dapy/blob/master/notebooks/03_EDA.ipynb) [![Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aymanibrahim/dapy/blob/master/notebooks/03_EDA.ipynb)

Heatmap            |  Scatterplot | Boxplot
:-------------------------:|:-------------------------:|:-------------------------:
![](./figs/03_EDA/05_pearson/correlation_heatmap.png)  |  ![](./figs/03_EDA/05_pearson/positive_correlation_engine_size_price_scatterplot.png)|  ![](.//figs/03_EDA/01_descriptive/drive_wheels_price_box_plot.png)

- Descriptive Statistics
- Basic of Grouping
- ANOVA
- Correlation

## [04 Model Development](https://github.com/aymanibrahim/dapy/blob/master/notebooks/04_Model_Development.ipynb) [![Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aymanibrahim/dapy/blob/master/notebooks/04_Model_Development.ipynb)

3rd Polynomial            |  Actual/Fitted | 11th Polynomial
:-------------------------:|:-------------------------:|:-------------------------:
![](./figs/04_Model_Development/03_polyreg/polynomial_fit_price_highway-mpg_3_order.png)  |  ![](./figs/04_Model_Development/02_visualize/actual_fitted_values_distplot.png)|  ![](./figs/04_Model_Development/03_polyreg/polynomial_fit_price_highway-mpg_11_order.png)


- Simple and Multiple Linear Regression
- Model Evaluation Using Visualization
- Polynomial Regression and Pipelines
- R-squared and MSE for In-Sample Evaluation
- Prediction and Decision Making

## [05 Model Evaluation](https://github.com/aymanibrahim/dapy/blob/master/notebooks/05_Model_Evaluation.ipynb) [![Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aymanibrahim/dapy/blob/master/notebooks/05_Model_Evaluation.ipynb)

5th Polynomial            |  R^2 | 4 Features
:-------------------------:|:-------------------------:|:-------------------------:
![](./figs/05_Model_Evaluation/02_select/degree5_poly_horse_power.png)  |  ![](./figs/05_Model_Evaluation/02_select/r_squared_order_horsepower.png)|  ![](./figs/05_Model_Evaluation/02_select/distribution_plot_of_predicted_value_using_test_data_vs_data_distribution_of_test_data_with_4_features__distplot.png)

- Model Evaluation
- Over-fitting, Under-fitting and Model Selection
- Ridge Regression
- Grid Search

# Prerequisite
- [Python for Data Science Workshop](https://github.com/aymanibrahim/pyds)

# Pre-workshop 

You will need a laptop that can access the internet 

## 1: Installation
Install miniconda or install the (larger) Anaconda distribution

[Install Python using Miniconda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html)

OR [Install Python using Ananconda](https://www.anaconda.com/distribution/)

## 2: Setup

### 2.1: Download workshop code & materials
Clone the repository
```
git clone git@github.com:aymanibrahim/dapy.git
```
OR [Download the repository as a .zip file](https://github.com/aymanibrahim/dapy/archive/master.zip)

### 2.2: Change directory to dapy
Change current directory to **dapy** directory
```
cd dapy
```
### 2.3: Install Python with required packages
Install Python with the required packages into an environment named _dapy_  as per [environment.yml](https://github.com/aymanibrahim/dapy/blob/master/environment.yml) YAML file.
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
## Ayman Ibrahim

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

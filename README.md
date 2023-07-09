<!-- anchor tag for back-to-top links -->
<a name="readme-top"></a>

## Table of Contents
<ol>
  <li>
    <a href="#about-the-project">About The Project</a>
    <ul>
      <li><a href="#summary">Summary</a></li>
      <li><a href="#built-with">Built With</a></li>
    </ul>
  </li>
  <li>
    <a href="#motivation">Motivation</a>
  </li>
  <li>
    <a href="#data">Data</a>
  </li>
  <li>
    <a href="#data-preprocessing">Data Preprossesing</a>
    <ul>
      <li><a href="#data-transformation">Data transformation</a></li>
      <li><a href="#handling-categorica-variable">Handling categorical variable</a></li>
      <li><a href="#feature-engineering">Feature engineering</a></li>
      <li><a href="#feature-selection">Feature selection</a></li>
    </ul>
  </li>
  <li>
    <a href="#model-building">Model Building</a>
    <ul>
        <li><a href="#tss-K-fold-cross-validation">Time series tran-test-split & k-fold cross validation</a></li>
        <li><a href="#model-performance-comparison">Model performance comparison</a></li>
        <li><a href="#hyperparameters-tunning">Hyperparameters tuning</a></li>
    </ul>
  </li>
  <li>
    <a href="#getting-started">Getting Started</a>
    <ul>
      <li><a href="#prerequisites">Prerequisites</a></li>
    </ul>
  </li>
</ol>

----

<!-- ABOUT THE PROJECT -->
## About The Project

### Summary
+ Motivation: Develop accurable and actionable sales forecast
+ Data: Simulated eCommerce sales data from [Advance SQL with Maven](https://www.udemy.com/course/advanced-sql-mysql-for-analytics-business-intelligence/)
+ Data Preprosessing: Data transformation, handling categorical variable, feature engineering and feature selection
+ Machine Learning Models: Comparison of decision tree, random forest and xgboost regressor
  + time series train-test-split an K-fold cross validation
  + model performance: 
    |  3-fold cross validation  | Decision Tree | Random Forest | XGBoost   |
    |-------------------|-----------|---------------|--------------|
    | total RMSE   | 6271.91     | 5597.81        | 5306.47        |

<!-- Data -->
## Data 
+ 472871 entries of website sessions dataset and 32313 entries of orders restructured into 1096 entries of sales growth dataset
![Daily sales plot](plots/daily_sales.png)

## Data Preprocessing
+  Data Transformation: merging website sessions dataset and orders dataset into a suitable format for training the chosen machine learning models.
+  Handling Categorical Variables:  add black friday as binary variable.
+  Feature Engineering:  add lag features which transform time series dataset into supervised learning dataset.
+  Feature Selection:  using autocorrelation plot, feature importance scores and recursive feature selection to select meaningful features.

## Model Building
+  Time series tran-test-split and k-fold cross validation which are specialised in dealing with time series forecasting
+  Performance comparison of three different machine learning models namely, decision tree, random forest and xgboost regressor
+  Best model is selected for hyperparameter tuning with random search cross validation in scikit-learn.
 ---------
      
## Tools used in this project
* ![scikit-learn](https://img.shields.io/badge/scikit--learn-%23F7931E.svg?style=for-the-badge&logo=scikit-learn&logoColor=white)
* ![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)
* ![NumPy](https://img.shields.io/badge/numpy-%23013243.svg?style=for-the-badge&logo=numpy&logoColor=white)
* ![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)
* ![Udemy](https://img.shields.io/badge/Udemy-A435F0?style=for-the-badge&logo=Udemy&logoColor=white)
* ![Jupyter Notebook](https://img.shields.io/badge/jupyter-%23FA0F00.svg?style=for-the-badge&logo=jupyter&logoColor=white)
  

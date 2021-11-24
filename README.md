# Data Visualization Project 4

## Retail Coffee Modeling Project

#Interactive part of the project:
Our dashboard is the same as project 3, using the same codes, but because we were unable to host our findings, we have decided to show our results with
screen shots on our presentation.

However, to execute the dashboard, please run the app.py in the "Group" file in our repository

## Purpose

During Project 3, our team looked at Yelp.com data from eight metropolitain cities in eight different states and analyze the popularity
of the coffee shops in the area.  This part of the project will look at analyzing and predicting various aspects of the coffee retail industry
through machine learning.

## Team Members
Galyna Malynska, Priya Singh, Banke Ogunjumo, Michael Liu, Jasper Chou

## Sentiment Analysis based on Yelp.com reviews
The Sentiment Analysis was performed using the following models:

 1. Decision Tree Classifier
 2. Random Forest Classifier
 3. Multi-Layer Perceptron Classifier.

The goal of this part of the analysis was to predict the accuracy of the models based on the reviews submitted by Yelp
users.  The forementioned models resulted in an accuracy rate of 83.13%, 86.31%, and 92.67% respectively

## Retail Coffee Shop Success Models
To predict the viability and success of a coffee shop in these metropolitian areas the following models were used:
 1. Logistic Regression
 2. Decision Tree Classifier
 3. Adaptive Boosting Classifier
 4. Random Forest Classifier models.

The lowest accuracy score of 75.13% and precision score of 77.01% came from Adaptive Boosting Classifier.  The highest accuracy score and precision score of 93.37% and 95.92% (respectively) came from the Decision Tree Classifier.

## Clustering of Cities
In this model, the objective was to determine if certain areas will have a proclivity of retail coffee shops.  Using KNN, the model showed distinct clustering.  The Elbow curve shows that the optimal number of clusters is three; however, by looking at the data, we see clustering at all eight metropolitan areas.  The clustering method may not show a true center of clustering and may be actually result in a Type I error.  There is some bias because the data only shows coffee shops in the metro areas given, no other coffee shop data is given for the entire states of each metro area.

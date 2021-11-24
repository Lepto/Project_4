# Data Visualization Project 4

## Retail Coffee Modeling Project

#Interactive part of the project:
Our dashboard is the same as project 3, using the same codes, but because we were unable to host our findings, we have decided to show our results with
screen shots on our presentation.

However, to execute the dashboard, please run the app.py in the "Group" folder in our repository

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

## Business Rating Analysis
The review data from yelp was downloaded from https://www.yelp.com/dataset. The json files were downloaded as CSV files and filtered down to analyze Coffee Shops in 10 US States.

Naive Bayes is the machine learning model built to predict star rating of businesses based on the review text. The Naive Bayes model is mostly used for text classification in binary or multiple classes.

The Naive Bayes model for pyspark did not provide a high accuracy as accuracy score did not go above 48 percent. It was observed that adding more features further reduced the accuracy of the model. "Text" was the feature that provided 48% with a label "Stars". See Naive_Bayes_Spark.ipynb file for code and more details.

Due to low accuracy from the Naive Bayes model in pyspark, there was a need to run the same model again using a different library.

Naives Bayes model in python using the sklearn library produced a higher accuracy. From sklearn.naive_bayes, MultinomialNB was imported. The sklearn Naive Bayes model showed a 90 percent accuracy for prediction. See NLP_Project4_final.ipynb for codes and more details.

Exploratory Data Analysis Charts, Dashboard and Story was created for Business and Review data set to get a better understanding of the data. See link for visuals. https://public.tableau.com/app/profile/banks6164/viz/ChartsDashboardandStoryYelpReviews/Story1

For images of visuals see the image folder.

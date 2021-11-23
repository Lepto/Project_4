# Project 4

This project used text analysis to predict Star rating of businesses listed in the yelp dataset. The review data from yelp was downloaded from https://www.yelp.com/dataset. The json files were downloaded as CSV files and filtered down to analyze Coffee Shops in 10 US States.

Data Preprocessing
Yelp Dataset has six json files business.json, review.json, user.json, checkin.json, tip.json, photo.json. This project utilized business and review files for analysis in this project.

Review csv was uploaded to Databricks. See file DBFS for sql queries used in the preprocessing the Review.csv. Query results were exported into csv files. Review_final.csv file was uploaded and read into google colab notebook for machine learning model.

Review_final contains no nulls and it has 10 percent of the records in the Review.csv file. This about 39,000 records/rows.

Naive Bayes is the machine learning model built to predict star rating of businesses based on the review text. The Naive Bayes model is mostly used for text classification in binary or multiple classes.

The Naive Bayes model for pyspark did not provide a high accuracy as accuracy score did not go above 48 percent. It was observed that adding more features further reduced the accuracy of the model. "Text" was the feature that provided 48% with a label "Stars". See Naive_Bayes_Spark.ipynb file for code and more details.

Due to low accuracy from the Naive Bayes model in pyspark, there was a need to run the same model again using a different library.

Naives Bayes model in python using the sklearn library produced a higher accuracy. From sklearn.naive_bayes, MultinomialNB was imported. The sklearn Naive Bayes model showed a 90 percent accuracy for prediction. See NLP_Project4_final.ipynb for codes and more details.

Exploratory Data Analysis
Charts, Dashboard and Story was created for Business and Review data set to get a better understanding of the data. See link for visuals.
https://public.tableau.com/app/profile/banks6164/viz/ChartsDashboardandStoryYelpReviews/Story1

For images of visuals see the image folder.



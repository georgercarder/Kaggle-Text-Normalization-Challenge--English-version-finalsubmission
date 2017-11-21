The indicators.finders are programs that engineer variables to detect certain "context" in sentences that indicate the class of sentence tokens and make guesses of class based on that context. Be sure to review any script with "guess" in the title so you can see how the "guess" algorithm works. Excuse the fragmented "cond" files but I found that in R breaking a program up in this way speeds things up greatly. These scripts must be completed before classifyTEST.R is called.

To run all indicators, run RUNINDICATORS.R in the directory where this body of files/data is contained.

Classification is consolidation of all scripts classifying sentence tokens. The process initially is quite systematic but becomes quite improvised towards the end in order to classify noisy tokens. A summary of the process is to check token for conditions, usually using a grep type function, then check against an indicator/finder, and also check if the token has yet been classified. It turns out that an order of operations is important to discern ambiguous tokens. For instance there is much ambiguity and overlap of conditions related to the DATE and TELEPHONE classes. To parse this overlap, order of classification had to be determined through trial and error to reduce misclassification.

classifyTEST.MASTER.R runs classification. This script also runs spacingnumberT.R and some other indicator scripts that fit in with the order of classification.

All data stems from the initial training and testing data sets provided by the Kaggle website. Programs that engineer data from these initial sources will be consolidated and posted. For now the resulting "caches" will be provided for download. Download the initial data sets:

wget https://www.kaggle.com/c/text-normalization-challenge-english-language/download/en_train.csv.zip

wget https://www.kaggle.com/c/text-normalization-challenge-english-language/download/en_test.csv.zip

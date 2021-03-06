% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PredictDBN.R
\name{PredictDBN}
\alias{PredictDBN}
\title{Predict DBN}
\usage{
PredictDBN(test, labels, model, layers)
}
\arguments{
\item{test}{Is the test-data (matrix) on which the user wants to make predictions.}

\item{labels}{Is a matrix with the corresponding labels for test-data.}

\item{model}{Is the trained DBN model.}

\item{layers}{Defines the number of layers.}
}
\value{
A list with a confusion matrix and the accuracy of the predictions.
}
\description{
Function for predicting on a test set with a Deep Belief Network (Trained with DBN)
}
\examples{
# Load the MNIST data
data(MNIST)

# Train the DBN model
modDBN <- DBN(MNIST$trainX, MNIST$trainY,n.iter = 500, nodes = c(500, 300, 150), learning.rate = 0.5,
size.minibatch = 10, n.iter.pre = 300, learning.rate.pre = 0.1, verbose = FALSE)

# Make predictions with PredictDBN
PredictDBN(MNIST$testX, MNIST$testY, model = modDBN, layers = 4)


}

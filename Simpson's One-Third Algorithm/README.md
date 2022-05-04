# **Simpson's 1/3 Algorithm Description**
Simpson's 1/3 rule is a numerical method that can be employed to calculate an estimate value of an integral. In this algorithm, two data sets are used to find the numerical integral of the data. However, it is important that the independent data used in this algorithm is equally spaced and consists of the same number of data points as the dependent data. 

## Inputs
- x = the vector of equally spaced independent variable
- y = the vector of function values with respect to x

## Outputs
- I = the calculated numerical integral

## Limitations
In order to perform integration using Simpson's 1/3 formula in the first place, two things must be required:
1. Input data/matrices must be of the same size/length.
2. The data set containing the independent variable must be equally spaced (in this case, the x vector).

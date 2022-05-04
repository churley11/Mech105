# **Linear Regression Algorithm Description**
The linear regression algorithm uses two input matrices (independent and dependent data sets) in order to determine the linear regression of the data ("line of best fit"). First, the algorithm sorts the data and gets rid of any pesky outliers from the data sets. Then from the filterd data, statistics are used to create the regression line. Finally, the algorithm also finds the R^2 value of the regression line. This value is a direct measure of how well the regression line corresponds to the "trend" of the data. 

## Inputs
- x = x-values for our data set
- y = y-values for our data set

## Outputs
- fX = x-values with outliers removed
- fY = y-values with outliers removed
- slope = slope from the linear regression y=mx+b
- intercept = intercept from the linear regression y=mx+b
- Rsquared = R^2, a.k.a. coefficient of determination

## Limitations
The size of the input matrices (x and y) must be the same in order for this algorithm to work. 

# **Root Finding - False Position Algorithm Description**
By employing two guesses of where a function might have a root, this algorithm is able to use the false position method in order to provide an accurate estimation of where a true root might lie. 

## Inputs
- func = anonymous function you are interested in finding the root of
- xl = lower guess
- xu = upper guess
- es = stopping criterion (when ea passes below this value, stop iterations)
- maxit = maximum number of iterations you want to perform (when number of iterations exceeds this number, stop iterations)
- varargin = . . . any additional parameters used by the function

## Outputs
- root = the estimated root location
- fx = the function evaluated at the root location
- ea = the approximate relative error (%)
- iter = how many iterations were performed

## Limitations
The algorithm must be given a function, a lower guess, and an upper guess. If given only three input arguments, the algortithm will still perform the false position root finding method using predefined values for maxit and es.  

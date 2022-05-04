# **Special Matrix Algorithm Description**
This special matrix algorithm returns an n by m matrix that contain elements consisting of the following values:
1. The value of each element in the first row is the number of the column.
2. The value of each element in the first column is the number of the row.
3. The rest of the elements each has a value equal to the sum of the element above it and element to the left of it.
4. The function must return a sensible error if the user does not input exactly two arguments.

## Inputs
- n = Number of desired rows
- m = Number of desired columns

## Outputs
- A = Matrix that exhibits columns 1:m, rows 1:n, and elements determined from the summation of the element above it and to the left of it in the matrix. 

## Limitations
The user must input two arguments:
- A value for the number of rows (n)
- A value for the number of columns (m)

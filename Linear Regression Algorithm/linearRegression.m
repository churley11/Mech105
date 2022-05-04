function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
% Cole Hurley

% The function 'linearRegression' Computes the linear regression of a data set
%   Compute the linear regression based on inputs:
%     1. x: x-values for our data set
%     2. y: y-values for our data set
%
%   Outputs:
%     1. fX: x-values with outliers removed
%     2. fY: y-values with outliers removed
%     3. slope: slope from the linear regression y=mx+b
%     4. intercept: intercept from the linear regression y=mx+b
%     5. Rsquared: R^2, a.k.a. coefficient of determination

if size(x) ~= size(y)
    error('The X and Y matrices are not the same size.')
end
n = length(y);
detx = issorted(x);
dety = issorted(y);

if detx == 1 && dety == 1
    sortedX = x;
    sortedY = y;
else
    [sortedY, sortOrder] = sort(y);
    sortedX = x(sortOrder);
end

%DETERMINE Q1,Q3, AND IQR
xQ1 = floor((n+1)/4);
xQ3 = floor((3*n+3)/4);
Q1 = sortedY(xQ1);
Q3 = sortedY(xQ3);
IQR = Q3-Q1;

%FILTER
filter1 = (Q1-(IQR.*1.5));
filter2 = (Q3+(IQR.*1.5));

outliers = find(sortedY < filter1 | sortedY > filter2);
sortedX(outliers) = [];
sortedY(outliers) = [];

fX = sortedX;
fY = sortedY;

%REGRESSION
n = length(fY);
Sy = sum(fY);
Sx = sum(fX);
Sy2d = sum(fY.^2);
Syx = sum(fY.*fX);
Sx2d = sum(fX.^2);
n = length(fX);
yBar = (sum(fY)/n);
xBar = (sum(fX)/n);

a1 = (n*Syx-Sy*Sx)/(n*Sx2d-Sx^2);
a0 = yBar-a1*xBar;

Rline = a0+a1*fX;

slope = a1;
intercept = a0;

SStot = sum((fY-yBar).^2);
SSres = sum((fY-Rline).^2);
Rsquared = 1-(SSres/SStot);

end
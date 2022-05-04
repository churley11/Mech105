function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
%
% NOT COMPLETELY CORRECT



%Inputs are the same length?
if size(x,2) ~= size(y,2)
    error('Input matrices must be the same size')
end

%Is the x matrix equally space?
if linspace(x(1),x(end),size(x,2)) ~= x
    error('X input is not equally spaced')
end

%Number of segments - is the number of segments odd or even?
num_Seg = size(x,2)-1;
hI = num_Seg./2;
n = 1;
if num_Seg == 1 %Trapezoidal Rule (one segment)
    I = (x(end)-x(1,1)).*((y(1,2)+y(1))./2);
    warning('Trapezoidal Rule is being used')

elseif num_Seg == 2 %Simpson's Rule with two segments
    I = (x(end)-x(1,1)).*((y(1,1)+(4.*y(1,2))+y(1,3))./6);

elseif mod(num_Seg,1) == 0 %Simpson's Rule & Trapezoidal Rule (odd segments)
    warning('Trapezoidal rule must be used for last interval.')


elseif mod(num_Seg,2) == 0 %Simpson's Rule (even segments)
    for i = 0:1:hI
        prevI = ephI;
        ephI = (x(end)-x(1,1)).*((y(1,n)+(4.*y(1,n+1))+y(1,n+2))./6);
        n = n+2;
        I = prevI + ephI;
    end
end

end
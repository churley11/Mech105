%Created by Cole Hurley
%Mech 105
%3/4/21
%falsePosition function

function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
%Inputs: 
%func = anonymous function you are interested in finding the root of
%xl = lower guess
%xu = upper guess
%es = stopping criterion (when ea passes below this value, stop iterations
%maxit = maximum number of iterations you want to perform (when number of
%iterations exceeds this number, stop iterations

if nargin < 3
    error('A minimum of three input arguments are required in order for function to work!')
end

if nargin < 4 || isempty(es)
    es = 0.0001;
end

if nargin < 5 || isempty(maxit)
    maxit = 200;
end

xr = xl;
iter = 0;
test = (func(xl))*(func(xu));

if test >=0
    if func(xl) == 0
        fprintf('The root of the function is %8.4f \n',xl)
    elseif func(xu) == 0
        fprintf('The root of the function is %10.4f \n',xu)
    else
    error('Initial guesses do not bracket a root')
    end
end

while (1)
    prevxr = xr;
    xr = xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu)));
    iter = iter + 1;
    test = func(xl)*func(xu);
    ea = (abs((xr-prevxr)/xr))*100;
    if xr ~= 0
        ea = (abs((xr-prevxr)/xr))*100;
    end
    if ea <= es || iter == maxit
        break
    end
    if test > 0
        xl = xr;
    elseif test < 0
        xu = xr;
    else
        ea = 0;
    end
if ea <= es || iter==maxit
    break
end
end

root = xr;
fx = func(xr);
ea = ea;
iter = iter;
end




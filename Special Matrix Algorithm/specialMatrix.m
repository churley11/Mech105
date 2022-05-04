%Homework 5 Mechanical Engineering Problem Solving
%Cole Hurley
%Created: 1/26/22
%Edited last: 1/26/22
%%

function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice

A = [];
if nargin ~=2
    error('Function requries exactly two arguments, see documentation')
end

for c = 1:n
    for h = 1:m
        if c==1
            A(c,h)=h;
        elseif h==1
            A(c,h)= c;
        else
            A(c,h) = A(c,h-1) + A(c-1,h);
        end
    end
end
end

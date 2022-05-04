function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = square coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix

Rsize = size(A,1);
Csize = size(A,2);
if Rsize ~= Csize
    error('Matrix must be square (same number of columns and rows)')
end

Rsize = length(A);
L = zeros(Rsize);
U = A;
P = eye(Rsize);

for i=1:Rsize-1
    [perm, c] = max(abs(U(i:Rsize,i)));
    c = c+(i-1);
    if perm == 0 
        error('The matrix cannot be pivoted')
    end

    U([i, c],:) = U([c, i],:);
    P([i, c],:) = P([c, i],:);
    L([i, c],:) = L([c, i],:);

    for c = i+1:Rsize
        factor = -U(c,i)/U(i,i);
        U(c,:) = U(c,:) + factor*U(i,:);
        L(c,i) = -factor;
    end
end

L = eye(Rsize);
%L*U == P*A
%U = triu(A);
%L = tril(A);
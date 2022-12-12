function answer = lagrangeBasisPolynomials(i,x,I)
%LAGRANGEBASISPOLYNOMIALS Comutes the i:th Lagrange Basis Polynomials with x as vector.
%   i - share
%   x - values, often 0, vector
%   I - distinct points

answer = 1;
for j = I
    if j == i
        continue
    end

    temp = (x-j)./(i-j);
    
    answer = answer .* temp;
end


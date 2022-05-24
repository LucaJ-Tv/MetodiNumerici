function [inve] = solv_nsis(A, b)
[n, m] = size(b);
[L, U, P, flag] = LUparziale(A);
for j=1:m
    [x, f] = Lsolve(L, P*b(:, j));
    [y, f] = Usolve(U,x);
    inve(:, j) = y;
end

end

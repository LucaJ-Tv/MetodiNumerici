function [A] = costruisci_A(x, n)
m = length(x);
A = zeros(m, n);
for i=1:n
    A(:, i) = x.^(i-1);
end
end
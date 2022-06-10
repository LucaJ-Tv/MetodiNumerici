function [I] = trapcomp(fun, a, b, n)
h =(b-a)/n;
nodi = [a:h:b];
f = fun(nodi);
I = (f(1) + 2*sum(f(2:n)) + f(n+1))*(h/2);
end
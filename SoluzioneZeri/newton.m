function [result, approssimazioni, iterations] = newton(fun,deri, x0, tolx, tolf, NMAX)
m = deri(x0);
if m == 0
    disp('Errore')
    result = [];
    approssimazioni = [];
    iterations = [];
    return
end
fx0 = fun(x0);
result = x0 - fx0/m;
fx = fun(result);
iterations = 1;
approssimazioni(iterations) = result;
while iterations < NMAX && abs(fx) >= tolf && abs(fx0*m) > tolx*abs(result)
    iterations = iterations + 1;
    result = x0 - fx0/m;
    approssimazioni(iterations) = result;
    x0=result;
    fx=fun(result);
    fx0 = fx;
    m = deri(x0);
    if m == 0
        disp('Errore')
        result = [];
        approssimazioni = [];
        iterations = [];
        return
    end
end
end
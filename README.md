# MetodiNumerici
indice di condizionamento <Funzioni>
dove f = @(x) x^2 + x^3 ......;
K = (|x|*|f'(x)|)/|f(x)|

indice di condizionamento <Matrice>
A = zeros(n, n)
% La norma dell'inversa di A * la norma della matrice A
K = norm(A^-1,2)*norm(A, 2);


Se K >> 1 il problema è mal condizionato
------------

Come capire se un'operazione è stabile : 
x = 10^-5 + sqrt(10^5 - 10000000000000000000000000000000000000000000000000000000000000000)
-> Vedrai che questa operazione avrà come risultato 0, vuol dire che questa formula soffre della CANCELLAZIONE NUMERICA.
















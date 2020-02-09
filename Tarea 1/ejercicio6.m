%{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
%{
Aproxime los valores propios de la matriz
     1 1 1
A =  1 2 3 
     1 3 6
con los siguientes pasos:
(a) Grafique en Matlab el polinomio caracterı́ístico, p(λ), correspondiente a
 la matriz A.
(b) Use el método de Newton para aproximar cada uno de los tres valores 
propios de A, λ_1 = 0.1270, λ_2 = 1.0, λ_3 = 7.8730.

det(A-lambda*I)
%}

y_characteristic = [];
fun = @(x)polinomio_c(x);
a = -1; b = 9;
xx = linspace(a,b,100);
for c = xx
    y_characteristic = [y_characteristic fun(c)];
end

fprintf('Graficando la función... \n');
plot(xx,y_characteristic,'b',xx,0*xx,'k')
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;

fprintf("\n--------------------------\n Encontrando la primer raíz... \n Valor inicial = 0 \n--------------------------\n");
newton(fun,0);
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;

fprintf("\n--------------------------\n Encontrando la segunda raíz... \nValor inicial = 4 \n--------------------------\n");
newton(fun,4);
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;

fprintf("\n--------------------------\n 'Encontrando la tercera raíz... \n'Valor inicial = 10 \n--------------------------\n");
newton(fun,10);
close all;
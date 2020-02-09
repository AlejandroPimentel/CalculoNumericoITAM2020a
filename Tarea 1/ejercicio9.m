%{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
%{
Aproxime con el método de la razón dorada, el mínimo local del polinomio, 
p(x) = (x − 1)(x − (3/2))(x − 2).
%}
fun = @(x)(x - 1).*(x - (3/2)).*(x - 2);
% GRAFICACIÓN
a = 1.5; b = 2;
xx = linspace(a,b,100);
fprintf('Graficando la función... \n');
plot(xx,fun(xx),'b',xx,0*xx,'k')
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;

fprintf('Resolviendo por método de la razón dorada... \n');
razon_dorada(fun,a, b);
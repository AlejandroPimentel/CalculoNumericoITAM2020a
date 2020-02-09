
%{
El pago de una hipoteca de una casa en un periodo fijo de tiempo requiere 
la ecuación de anualidad ordinaria
A = [P/i][1−(1 + i)^(−n)],
donde A es el importe de la hipoteca, P es el importe de cada pago e i es 
la tasa de interés por periodo para n periodos. Supongamos que se necesita 
una hipoteca de $2, 000, 000 por una casa a 30 años y que los pagos máximos
que se puede realizar el cliente son de $10, 000 pesos mensuales. ¿Cuál 
será el interés más alto que podrá pagar ?
%}


fun = @(x)anualidad(x);
% GRAFICACIÓN
a = 0.001; b = .01;
xx = linspace(a,b,100);
fprintf('Graficando la función... \n');
plot(xx,fun(xx),'b',xx,0*xx,'k')
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;

fprintf('Resolviendo por bisección... \n');
biseccion(fun,a, b);
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;

fprintf('Resolviendo por regla falsa... \n');
reglaFalsa(fun, a, b);
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;

fprintf('Resolviendo por secante... \n');
secante(fun, (a+b)/2 - 1e-4, (a+b)/2 + 1e-4);
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;

fprintf('Resolviendo por método de Newton... \n');
newton(fun,(a+b)/2);
close all;

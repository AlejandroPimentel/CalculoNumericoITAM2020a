%{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
addpath("./ejercicios")
addpath("./funciones")
close all; clear; clc;
%{-     Ejercicios 1 y 2        -%}
fun = inline("(x + (2/x))/2");
graficaPuntoFijo();
hold on
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;
fprintf('Calculando punto fijo de y(x) = (1/2)*( x + (2/x)) ... (ver gráfica) \n');
[fixed_point, iteraciones] = puntoFijo(fun, 1.8);
vert_line = linspace(1,fixed_point,100);
plot(repelem(fixed_point, 100), vert_line,"--r")
hold off
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;

%{-     Ejercicio 3        -%}
ejercicio3_lab2()


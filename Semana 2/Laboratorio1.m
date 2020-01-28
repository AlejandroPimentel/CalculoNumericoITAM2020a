close all;
clear;
clc;


fun = @(x)myFun(x);
% GRAFICACI�N
a = 0.004; b = 0.02;
xx = linspace(a,b,100);
plot(xx,fun(xx),'b',xx,0*xx,'k')


biseccion(fun,a, b);
reglaFalsa(fun, a, b);
secante(fun, (a+b/2), b);
newton(fun,b);
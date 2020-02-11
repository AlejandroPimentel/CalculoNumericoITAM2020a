clc; clear; close all;

x = linspace(0, 2*pi, 125)';
y = sin(x);
plot(x,y,"b",x, 0*x, "k")
fun = inline("sin(x)");
newton(fun,2);
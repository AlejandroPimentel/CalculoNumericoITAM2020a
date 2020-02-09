close all;
clear;
clc;

fun = @(x)((1/2)*( x + (2/x)));
fixedPoint(fun, 1.8);
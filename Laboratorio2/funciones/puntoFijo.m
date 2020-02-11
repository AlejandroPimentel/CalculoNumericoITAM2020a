%{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
function [fixedPoint_,kitter] = puntoFijo(fun,x_0)
%FIXEDPOINT Summary of this function goes here
%   Detailed explanation goes here
    maxitter = 50;
    kitter = 1;
    x = x_0;
    x_ = fun(x);
    tol = 2e-16;
    while (kitter < maxitter) && (abs(fun(x) - fun(x_)) > tol) && (abs(x - x_) > tol)
        x = x_;
        x_=fun(x);
        kitter = kitter+1;
    end
    fixedPoint_ = x_;
    if abs(fun(x) - fun(x_)) > tol  && (abs(x - x_) > tol)
        fprintf('\n--------------------------\n No hubo convergencia en  %.0f interaciones ): \n--------------------------\n', kitter)
    else
        fprintf('\n--------------------------\n Metodo de punto fijo \nNumero de iteraciones = %.0f \nPuntoFijo = %.12f  \n--------------------------\n', kitter, fixedPoint_)
    end
end


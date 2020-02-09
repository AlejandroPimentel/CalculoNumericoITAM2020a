function [fixedPoint_] = fixedPoint(fun,x_0)
%FIXEDPOINT Summary of this function goes here
%   Detailed explanation goes here
    maxitter = 1000;
    kitter = 1;
    x = x_0;
    x_ = fun(x);
    tol = 1e-12;
    while (kitter < maxitter) && (abs(x - x_) > tol)
        x = x_;
        x_=fun(x);
        kitter = kitter+1;
    end
    fixedPoint_ = x_;
    if abs(x - x_) > tol
        fprintf('\n--------------------------\n No hubo convergencia en  %.0f interaciones ): \n--------------------------\n', kitter)
    else
        fprintf('\n--------------------------\n Metodo de punto fijo \nNumero de iteraciones = %.0f \nPuntoFijo = %.8f  \n--------------------------\n', kitter, fixedPoint_)
    end
end


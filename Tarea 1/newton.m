%{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
function [x, f_x, kitter] = newton(fun, x)
    tol = 2e-16;
    maxitter = 1000;
    kitter = 1;
    
    f_x = fun(x);
    h = 1e-6;
    xpp = x + h; f_xpp = fun(xpp);
    xmm = x - h; f_xmm = fun(xmm);
    m = (f_xpp - f_xmm) / (xpp-xmm);
    err = 1;
    
    while kitter < maxitter && abs(f_x) > tol && m ~= 0 && err > tol
        xp = x - f_x/m;
        err = abs(x - xp);
        x =  xp; f_x = fun(xp);   
        kitter = kitter + 1;
        
        xpp = x + h; f_xpp = fun(xpp);
        xmm = x - h; f_xmm = fun(xmm);
        m = (f_xpp - f_xmm) / (xpp-xmm);
    end
    x_opt = x;
    f_x_opt = fun(x_opt);
    fprintf('\n--------------------------\n Metodo de Newton \nNumero de iteraciones = %.0f \nRaiz = %.6f \nvalor en la raiz = %.6f \n--------------------------\n', kitter, x_opt, f_x_opt)
end


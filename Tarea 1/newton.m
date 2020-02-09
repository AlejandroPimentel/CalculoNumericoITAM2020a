function [x, f_x, kitter] = newton(fun, x)
    tol = 1e-12;
    maxitter = 1000;
    kitter = 1;
    
    f_x = fun(x);
    h = 1e-10;
    xp = x + h; f_xp = fun(xp);
    m = (f_xp - f_x) / (xp-x);
    err = 1;
    
    while kitter < maxitter && abs(f_x) > tol && m ~= 0 && err > tol
        xpp = x + h; f_xpp = fun(xpp);
        m = (f_xpp - f_x) / (xpp-x);
  
        xp = x - f_x/m;
        err = abs(x - xp);
        x =  xp; f_x = fun(xp);   
        kitter = kitter + 1;
    end
    x_opt = x;
    f_x_opt = fun(x_opt);
    fprintf('\n--------------------------\n Metodo de Newton \nNumero de iteraciones = %.0f \nRaiz = %.6f \nvalor en la raiz = %.6f \n--------------------------\n', kitter, x_opt, f_x_opt)
end


function [x, f_x, kitter] = biseccion(fun, a, b)
 
    tol = 1e-8;
    maxitter = 100000;
    kitter = 1;
    f_a = fun(a);
    f_b = fun(b);
    
    while (f_a *f_b < 0) && (f_b-f_a > tol) && (kitter < maxitter)
        c = (a+b)/2;
        f_c = fun(c);
        if f_a * f_c < 0
            b = c; f_b = f_c;
        else 
            a = c; f_a = f_c;
        end
        kitter = kitter + 1; 
    end

    x = (a+b)/2;
    f_x = fun(x);
    
    if abs(f_x)> abs(f_c)
        x = c;
        f_x = fun(x); 
    end
    fprintf('\n--------------------------\n Metodo de biseccion \nNumero de iteraciones = %.0f \nRaiz = %.8f \nvalor en la raiz = %.8f \n--------------------------\n', kitter, x, f_x)
end
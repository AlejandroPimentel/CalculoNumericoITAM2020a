%{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
function [x, f_x, kitter] = reglaFalsa(fun, a, b)

    tol = 1e-8;
    maxitter = 1000;
    kitter = 1;
    f_a = fun(a);
    f_b = fun(b);
    

    
    while(f_a *f_b < 0) && (b-a > tol) && (kitter < maxitter)
        m = (f_b - f_a) / (b-a);
        c = a - (f_a/m);
        f_c = fun(c);

        if f_a * f_c < 0
            b = c; f_b = f_c;
        else 
            a = c; f_a = f_c;
        end
        kitter = kitter + 1; 
    end
    
    if (f_a * f_b * f_c > 0)
        x = (a+b)/2;
        f_x = fun(x);
    else
        x = c;
        f_x = fun(x);
    end
    fprintf('\n--------------------------\n Metodo de regla falsa \nNumero de iteraciones = %.0f \nRaiz = %.6f \nvalor en la raiz = %.6f \n--------------------------\n', kitter, x, f_x)
end
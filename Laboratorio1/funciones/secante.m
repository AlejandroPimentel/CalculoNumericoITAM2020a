function [x, f_x, kitter] = secante(fun, a_1, a_2)
    tol = 1e-8;
    maxitter = 1000;
    kitter = 1;
    f_1 = fun(a_1);
    f_2 = fun(a_2);
    m = (f_2 - f_1) / (a_2-a_1);


    while ((kitter < maxitter) && (abs(f_2) > tol) && (m ~= 0))
        c = a_1 - f_1/m;
        a_1 = a_2; a_2 = c;
        f_1 = f_2; f_2 = fun(c);
        m = (f_2 - f_1) / (a_2-a_1);
        kitter = kitter + 1;
    end
    x = a_2;
    f_x = fun(x);
    fprintf('\n--------------------------\n Metodo de secante \nNumero de iteraciones = %.0f \nRaiz = %.8f \nvalor en la raiz = %.8f \n--------------------------\n', kitter, x, f_x)
end
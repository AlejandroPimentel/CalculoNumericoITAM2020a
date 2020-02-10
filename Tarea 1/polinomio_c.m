%{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
function det = polinomio_c(lambda, A)
    %POLINOMIO_C Summary of this function goes here
    %   Detailed explanation goes here
    A_1 = A - eye(3).*lambda;
    a = A_1(1,1);
    b = A_1(1,2);
    c = A_1(1,3);
    d = A_1(2,1);
    e = A_1(2,2);
    f = A_1(2,3);
    g = A_1(3,1);
    h = A_1(3,2);
    i = A_1(3,3);
    det = a*(e*i - f*h) - b*(d*i - f*g) + c*(d*h - e*g);
end


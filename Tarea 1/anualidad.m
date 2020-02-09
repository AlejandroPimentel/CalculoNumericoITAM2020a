%{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
function y = anualidad(i)
   
    A = 2000000; P =  10000; n = 360;
    f = @(x)( A - (P./i ).*(1 - ( 1 + x).^(-n) ));
    y = f(i);
    
end
%{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
function y = razon_dorada(fun,a,b)

tol = 1e-8;
maxitter = 1000;
kitter = 1;
golden_ratio=(sqrt(5)-1)/2;
x_1 = a + (1-golden_ratio) * (b-a);
x_2 = a + golden_ratio * (b-a);
f_1=fun(x_1);f_2=fun(x_2);
while (abs(b-a) > tol) && (kitter < maxitter)
    if f_1 < f_2          
        b=x_2; 
        x_2=x_1; 
        x_1=a+(1-golden_ratio)*(b-a);
        f_2=f_1; 
        f_1=fun(x_1);  
    else               
        a=x_1; 
        x_1=x_2; 
        x_2=a+golden_ratio*(b-a);
        f_1=f_2; 
        f_2=fun(x_2);
    end
    kitter = kitter + 1; 
end

y = (a+b)/2;
f_y = fun(y);
fprintf('\n--------------------------\n Metodo de la razón dorada \nNumero de iteraciones = %.0f \nMínimo encontrado = %.6f \nvalor en el mínimo = %.6f \n--------------------------\n', kitter, y, f_y)
end

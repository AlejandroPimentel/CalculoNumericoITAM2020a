%{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
fun_2 = inline("(1 + 2 * x^3)/(1 + 3 * x^2)"); 
x_interval = linspace(0,1,100);
evaluated_values_2 = [];
for x = x_interval
    evaluated_values_2 = [evaluated_values_2, fun_2(x)];
end

fprintf('\n Graficando g(x) en el intervalo [0,1] (ver gráfica)... \n');
plot(x_interval,evaluated_values_2,"--b",x_interval,x_interval,"--k")
title("Punto Fijo")
xlabel('Eje X')
ylabel('Eje Y')
text(.2,.2,'\leftarrow y(x)=x')
text(.3,fun_2(.3),'\leftarrow y(x) = (1 + 2 * x^3)/(1 + 3 * x^2)')
hold on
fprintf('Programa pausado, pulse enter para continuar.\n');
pause;
fprintf('\n Calculando punto fijo de y(x) = (1/2)*( x + (2/x)) (ver gráfica)... \n');
fixed_point = puntoFijo(fun_2, 0.5);
vert_line = linspace(0,fixed_point,100);
plot(repelem(fixed_point, 100), vert_line,"--r")
hold off
 %{    
    Autor: Alejandro García Pimentel
    Clave única: 138771
%}
fun = inline("(x + (2/x))/2");
x_interval = linspace(1,2,100);
evaluated_values = [];
for x = x_interval
    evaluated_values = [evaluated_values, fun(x)];
end

fprintf('\n Graficando g(x) en el intervalo [1,2] (ver gráfica)... \n');
plot(x_interval,evaluated_values,"--b",x_interval,x_interval,"--k")
title("Punto Fijo")
xlabel('Eje X')
ylabel('Eje Y')
text(1.7,1.7,'\leftarrow y(x)=x')
text(1.5,fun(1.5),'\leftarrow y(x) = (1/2)*( x + (2/x))')
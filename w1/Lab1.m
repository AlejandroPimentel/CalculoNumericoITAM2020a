%%%% Aritmetica de punto flotante

2/3
format long 
2/3
format hex
2/3
format bank 
2/3
format short
2/3
format long 

%%%% La manera en la que las computadoreas asignn los numeros, es que a
%%%% cada digito le asignan cierto espacio en memoria, cierto numero en
%%%% bits... (2,4, 8, 16, 32) ..
%%%% Esto definira la cantidad de digitos representados que puede tener mis
%%%% numeros. A estos digitos se les transforma de deos maneras. primero se
%%%% les eleva a alguna otencia de diez y por otro lado se le asigna un
%%%% valor positivo o negativo


%%%% +-(d_1, d_2, ..., d_m)* 10^x
%%%% numeros representables (9*10^(m-1)*(2*m+1))
%%%% 2*9*10^15(65)

%%%% Solo se pueden representar un numero finito de reales dentro de cierto
%%%% rango. 


%%%% Numero mas grande posible:
inf

x = 1;
n = 0;
while x < inf
    n = n + 1;
    x = 2*x;
end

whos

%%%%% Digitos demasiado pequeños pueden ser un pedo a la hora de hacer
%%%%% aritmetica.

b = 1;
c = .0000000000000000000000001;

eps
1+ eps

%%%% E epsilon es el numero mas pequeño que la maquina me va a tomar en
%%%% cuenta


%%%% Otra cosa que podría suceder es cancelacion catastrofica, definida
%%%% como cuando en valoes muy pequeños, la aritmetica se reduce a cero
%%%% cuando se restan aunque el resultado sea diferente a cero.

a = .00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002
b = .00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003

b-a


%%% mmm no pde replicarlo ):
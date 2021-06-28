%Este programa calcula la raíz de la ecuación que nos da el valor crítico
%del número de Mach para un coeficiente de presión mínima dado
clear
clc
fun=@(M)(((1-M^2)^(1/2)+M^2*(-0.383)/(2*(1+(1-M^2)^(1/2))))*1/ (0.7*M^2)*(((2+0.4*M^2)/2.4)^(7/2)-1)-(-0.383));
%En nuestro caso, Cpi=-0.383
x0=1; toler=10^-7; itermax=700; %tomamos los mismos valores iniciales que para bisección
[error,raiz,iteraciones]=secante(fun,x0,toler,itermax);
fprintf('El número de Mach crítico M con una tolerancia de %2.0e es M=%3.7f \n', toler, raiz);
fprintf('El error cometido es %1.2e y se han realizado %i iteraciones \n', error, iteraciones);
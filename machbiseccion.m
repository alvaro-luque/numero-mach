%Este prograMa calculará la raíz de la ecuación en función de M que sale de
%las relaciones dadas y para un CPi dado (en nuestro caso -0.383) Mediante
%biseccion
clear
clc
CPi=-0.383;
fun=@(M)(((1-M^2)^(1/2)+M^2*(-0.383)/(2*(1+(1-M^2)^(1/2))))*1/ (0.7*M^2)*(((2+0.4*M^2)/2.4)^(7/2)-1)-(-0.383));
a=0; b=1; % Estos limites son debidos a la discontinuidad de la funcion 
          % en M=0 y a que el problema nos dice que se espera un valor 
          % menor que la unidad

itermax=700;
tolerinter=0.01;
tolerfun=10^-7;
[raiz,fraiz,valores,fvalores,numiter,error]=metodobiseccion(fun,a,b,itermax,tolerinter,tolerfun);
fprintf('El número de Mach crítico para una tolerancia de %2.0e es M=%3.7f \n', tolerfun, raiz)
fprintf('El error es %1.2e y se han realizado %i iteraciones \n',error, numiter)
bisec=[raiz numiter];
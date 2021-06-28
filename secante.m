function [dif, raiz, iteraciones]=secante(fun,x0,toler,itermax)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   ---[Argumentos de entrada]---                        %
% fun: la función de la que queremos encontrar la raíz, definida como    %
%      f(x)=0                                                            %
% x0: valor inicial a partir del que se construyen los demás             %
% toler: tolerancia entre puntos que queremos                            %
% itermax: número máximo de iteraciones tras el cual el programa parará  %
%                                                                        %
%                   ---[Argumentos de salida]---                         %
% raiz: valor de x para el cual f(x) es más próximo a 0                  %
% iteraciones: número de iteraciones realizadas                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x1=fun(x0)+x0; 
for k=1:itermax
% dif nos servirá para comparar distancias entre puntos calculados mediante
% el método, lo cual nos indicará el error que cometemos.
    dif=x1; 
    x2=x1-fun(x1)*(x1-x0)/(fun(x1)-fun(x0));
    dif=abs(dif-x2);
    if dif<=(toler) 
        raiz=x2;
        iteraciones=k;
        break
    else
        x0=x1;
        x1=x2;
    end
end
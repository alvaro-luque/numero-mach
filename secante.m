function [dif, raiz, iteraciones]=secante(fun,x0,toler,itermax)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   ---[Argumentos de entrada]---                        %
% fun: la funci�n de la que queremos encontrar la ra�z, definida como    %
%      f(x)=0                                                            %
% x0: valor inicial a partir del que se construyen los dem�s             %
% toler: tolerancia entre puntos que queremos                            %
% itermax: n�mero m�ximo de iteraciones tras el cual el programa parar�  %
%                                                                        %
%                   ---[Argumentos de salida]---                         %
% raiz: valor de x para el cual f(x) es m�s pr�ximo a 0                  %
% iteraciones: n�mero de iteraciones realizadas                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x1=fun(x0)+x0; 
for k=1:itermax
% dif nos servir� para comparar distancias entre puntos calculados mediante
% el m�todo, lo cual nos indicar� el error que cometemos.
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
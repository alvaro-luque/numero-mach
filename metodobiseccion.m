function [raiz,fraiz,valores,fvalores,numiter,error] =...
    metodobiseccion(fun,a,b,itermax,tolerinter,tolerfun)
%-------------------------------------------------------------
% Aproxima por el metodo  de la biseccion una raiz de la ecuacion 
%                      fun(x)=0
% suponiendo que esta existe y es unica en el intervalo [a,b]
%-------------------------------------------------------------
% Argumentos de entrada:
%-----------------------
%    a  = extremo inferior del intervalo
%    b  = extremo superior del intervalo
%    tolerinter = tolerancia para el intervalo
%    tolerfun   = tolerancia para el valor de la fun
%    itermax    = numero maximo de iteraciones a realizar
%    fun    = fun (debe estar definida en el programa
%             de llamada usando '@' )
%-------------------------------------------------------------
% Argumentos de salida:
%-----------------------
%    raiz      = raiz aproximada
%    valores   = vector con la sucesion de valores que da el metodo
%    fraiz     = valor de la fun en la raiz aproximada
%    fvalores  = vector con la sucesion de los valores de la fun  
%    error     = error cometido
%    numiter   = numero de iteraciones realizadas 
%-------------------------------------------------------------
% Inicialización de variables
numiter=0;
valores=[];
fvalores=[];
fa=fun(a);
fb=fun(b);
% Se comprueba si la raiz está en los extremos
if fa==0
    raiz=a;
    fraiz=fa;
    error=0;
    return
end
if fb==0
    raiz=b;
    fraiz=fb;
    error=0;
    return
end
% Se comprueba que hay cambio de signo en [a,b]
if sign(fa)==sign(fb)
   disp('Error la funcion debe cambiar de signo en (a,b)');
   return;
end 
% Se hace la primera iteracion de la biseccion
numiter=numiter+1;
error    =(b-a)*0.5;
raiz      = a+error;
fraiz     = fun(raiz);
valores  = raiz;
fvalores = fraiz;
% Se entra en el bucle de iteraciones
while (error >tolerinter | fraiz>tolerfun) & (numiter < itermax)
    %  Se comprueba si se ha dado con la raiz
   if fraiz==0  
       error=0;
       return
   end
   %  Se busca el nuevo subintervalo  
   if sign(fa)==sign(fraiz)
       % el cambio de signo esta entre b y raiz
       a = raiz; 
       fa = fraiz;
   else
       % el cambio de signo esta entre a y raiz
       % Puedo comentar las dos instrucciones que siguen porque, 
       % al calcular el punto medio en la forma que se hace no se necesita 
       % ni el valor de b ni el de f(b)
        %	b =raiz; 
        %   fb =fraiz;
   end
   % actualizacion de las variables
   error     = error/2;
   raiz      = a+error;
   fraiz     = fun(raiz);
   valores   = [valores raiz];
   fvalores  = [fvalores fraiz];
   numiter   = numiter+1;
end 
% Se comprueba si se han alcanzado las tolerancias
if error > tolerinter | fraiz>tolerfun
    disp('No se alcanzan las tolerancias en las iteraciones dadas')
end
end
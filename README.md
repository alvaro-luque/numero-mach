# numero-mach
En este repositorio se incluyen los archivos necesarios para estudiar numéricamente el número de Mach a través del denominado coeficiente de presión de una aeronave.

Estos dos parámetros, en conjunto con el coeficiente de presión mínima, están relacionados entre sí mediante dos ecuaciones a resolver numéricamente

![image](https://user-images.githubusercontent.com/86519267/123659391-ebbe1700-d832-11eb-9b7a-2766d9952d63.png)

Reordenando estas ecuaciones encontramos una expresión igualada a cero a resolver por los métodos de la bisección y la secante para un coeficiente ![formula](https://render.githubusercontent.com/render/math?math=C_{p_i}) dado.

Para el valor de ![formula](https://render.githubusercontent.com/render/math?math=C_{p_i}=-0.383), el resultado de dibujar la función del problema es el siguiente

![mach01](https://user-images.githubusercontent.com/86519267/123661027-78b5a000-d834-11eb-8eb6-8f3b90319759.png)

La solución pues se encuentra en el intervalo ![formula](https://render.githubusercontent.com/render/math?math=M\in[0.7,0.8]). El valor de ![formula](https://render.githubusercontent.com/render/math?math=M), el número de iteraciones y el error se presentan para ambos métodos:

 Parámetro  | Bisección | Secante
------------ | ------------- | -------------
Valor de M | 0.738 | 0.7395983
Iteraciones | 8 | 15
Error | 4e-03 | 2.3e-11


Se añaden las funciones de Matlab asociadas a los métodos numéricos mencionados, a su vez que los programas que las integran para calcular el parámetro M, que será la raíz de la ecuación a resolver.

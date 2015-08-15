clear all;
clc;
a=imread('c:\paisaje.jpg');
b=rgb2gray(a);
c=b*1.4;
d=b+90;
subplot(3,3,1);
imshow(a);
title('Imagen original');
subplot(3,3,2);
imshow(b);
title('Imagen a escala de grises');
subplot(3,3,3);
imshow(c);
title('Imagen contraste aumentado 40%');
subplot(3,3,4);
imshow(d);
title('Imagen con iluminacion aumentada a 100%');
subplot(3,3,5);
imhist(b);
title('Histograma escala de grises');
subplot(3,3,6);
imhist(c);
title('Histograma contraste 40%');
subplot(3,3,7);
imhist(d);
title('Histograma con iluminacion aumentada a 100%');
%newI0 = Gauss(I0);
newI0 = edge(I0,'Sobel',0.01);
%newI1 = Gauss(I1);
newI1 = edge(I1,'Sobel',0.01);
%newI2 = Gauss(I2);
newI2 = edge(I2,'Sobel',0.01);
hola = newI0 + newI1 + newI2;
imshow(hola);
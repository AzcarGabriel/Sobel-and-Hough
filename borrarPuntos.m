function I = borrarPuntos(I,inicio,final)

inicioX = inicio(2);
inicioY = inicio(1);

finalX = final(2);
finalY = final(1);

i = inicioX;
j = inicioY;

while i <= finalX
    while j <= finalY
        I(j,i) = 0;
        j = j + 1;
    end
    i = i + 1;
    j = inicioY;
end

end
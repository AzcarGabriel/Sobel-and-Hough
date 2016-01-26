function resp = votar(votos,Y,X,aumento)

j = Y - 2;
i = X - 2;
maxJ = j + 4;
maxI = i + 4;

votos(j:maxJ,i:maxI) = votos(j:maxJ,i:maxI) + aumento;

resp = votos;

end
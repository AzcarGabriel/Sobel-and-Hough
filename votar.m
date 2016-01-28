function resp = votar(votos,Y,X,aumento)

j = Y - 1;
i = X - 1;
maxJ = j + 2;
maxI = i + 2;

votos(j:maxJ,i:maxI) = votos(j:maxJ,i:maxI) + aumento;

resp = votos;

end
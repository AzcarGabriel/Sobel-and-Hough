function resp = aumentoVotos(votos, puntosCircunferencia)
%aumenta los votos de los puntos obtenidos con PuntosCircunferencia

limite = size(puntosCircunferencia);
i = 1;
aumento = [1,1,1,1,1 ; 1,2,2,2,1 ; 1,2,3,2,1 ; 1,2,2,2,1 ; 1,1,1,1,1];
 
while i < limite(2)
    actualY = puntosCircunferencia(i) + 2;
    actualX = puntosCircunferencia(i + 1) + 2;
    votos = votar(votos,actualY,actualX,aumento);    
    i = i + 2;
end
resp = votos;
end
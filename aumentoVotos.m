function new = aumentoVotos(votos, puntosCircunferencia)
%aumenta los votos de los puntos obtenidos con PuntosCircunferencia

[N,M,dim] = size(votos);
limite = size(puntosCircunferencia);
i = 1;

while i < limite(2)
    actualY = puntosCircunferencia(i);
    actualX = puntosCircunferencia(i + 1);
    
    uno = actualY <= N;
    dos = actualY > 0;
    tres = actualX <= M;
    cuatro = actualX > 0 ;
    cinco = (actualX + 1) <= M;
    seis = (actualX - 1) > 0;
    siete = actualY + 1 <= N;
    ocho = actualY - 1 > 0 ;
    nueve = actualY - 2 > 0;
    diez = actualY + 2 <= N;
    once = actualX + 2 <= M;
    doce = actualX - 2 > 0;
    
    %Centro
    if uno && tres && dos && cuatro
        votos(actualY,actualX) = votos(actualY,actualX) + 2;
    end
    
    %Primera periferia
    if cinco
        votos(actualY,actualX + 1) = votos(actualY,actualX + 1) + 1;
    end
    
    if seis
        votos(actualY,actualX - 1) = votos(actualY,actualX - 1) + 1;
    end
    
    if siete
        votos(actualY + 1,actualX) = votos(actualY + 1,actualX) + 1;
    end
    
    if ocho
        votos(actualY - 1,actualX) = votos(actualY - 1,actualX) + 1;
    end
    
    %Segunda periferia
%     if nueve
%         votos(actualY - 2, actualX) = votos(actualY - 2, actualX) + 1;
%     end
%     
%     if diez
%         votos(actualY + 2, actualX) = votos(actualY + 2, actualX) + 1;
%     end
%     
%     if once
%         votos(actualY, actualX + 2) = votos(actualY, actualX + 2) + 1;
%     end
%     
%     if doce
%         votos(actualY, actualX - 2) = votos(actualY, actualX - 2) + 1;
%     end
%     
%     if nueve && once
%         votos(actualY - 2, actualX + 2) = votos(actualY - 2, actualX + 2) + 1;
%     end
%     
%     if nueve && doce
%         votos(actualY - 2, actualX - 2) = votos(actualY - 2, actualX - 2) + 1;
%     end
%     
%     if diez && once
%          votos(actualY + 2, actualX + 2) = votos(actualY + 2, actualX + 2) + 1;
%     end
%     
%     if diez && doce
%          votos(actualY + 2, actualX - 2) = votos(actualY + 2, actualX - 2) + 1;
%     end
    
    i = i + 2;
    
end
new = votos;

end
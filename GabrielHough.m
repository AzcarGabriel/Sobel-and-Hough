function max = GabrielHough(I, AproxRadius, original)
%Intento de Hough
%necesario = AproxRadius;
i = 1;
j = 1;
[N,M,dim] = size(I);
votos = zeros(N+4, M+4);
contador = 0;

while j < N
    while i < M
        if original > 20 && (I(j,i) == 2 || I(j,i) == 3 || I(j,i) == 1)
            puntos = PuntosCircunAngles([j,i],AproxRadius,N,M);
            votos = aumentoVotos(votos, puntos);
            contador = contador + 1;
        elseif I(j,i) == 2 || I(j,i) == 3
            puntos = PuntosCircunAngles([j,i],AproxRadius,N,M);
            votos = aumentoVotos(votos, puntos);
            contador = contador + 1;
        end
        i = i + 1;
    end
    i = 1;
    j = j + 1;
end

votos = votos(2 : N-2 , 2 : M-2 , :);

max = encontrarMaximo(votos);

end
function max = GabrielHough(I, AproxRadius)
%Intento de Hough
%necesario = AproxRadius;
i = 1;
j = 1;
[N,M,dim] = size(I);
votos = zeros(N+4, M+4);
contador = 0;

while i < M
    while j < N
        %insertShape(I, 'circle', [j i 0], 'LineWidth', 1, 'Color', 'green');
        if I(j,i) == 1
            puntos = PuntosCircunAngles([j,i],AproxRadius,N,M);
            votos = aumentoVotos(votos, puntos);
            contador = contador + 1;
        end
        j = j + 1;
    end
    j = 1;
    i = i + 1;
end

votos = votos(2 : N-2 , 2 : M-2 , :);

max = encontrarMaximo(votos);

% if max < necesario
%     max = 0;
% end

end
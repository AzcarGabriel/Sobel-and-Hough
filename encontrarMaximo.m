function maxCoord = encontrarMaximo(votos)

[N,M,dim] = size(votos);

i = 1;
j = 2;
max = 0;
maxCoord = [];

while i < M
    while j < N - 1
        if votos(j,i) >= max
            max = votos(j,i);
            maxCoord = [j,i];
        end
        j = j + 1;
    end
    j = 1;
    i = i + 1;
end

end
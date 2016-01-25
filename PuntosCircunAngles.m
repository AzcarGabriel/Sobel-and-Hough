function puntos = PuntosCircunAngles(centro, AproxRadius,N,M)

i = 0;
inicialX = centro(2);
inicialY = centro(1);
puntos = [];

while i < 2 * pi
    nuevo = [inicialY + floor(AproxRadius * sin(i)), inicialX + floor(AproxRadius * cos(i))];
    if nuevo > 0
        if nuevo(2) <= M && nuevo(1) <= N
            puntos = [puntos, nuevo];
        end
    end
    i = i + 0.2;
end

end
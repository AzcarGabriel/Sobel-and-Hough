function resp = CheckRadiusGrande(I,AproxRadius,Center)
centerX = Center(2);
centerY = Center(1);
i = 0;
contador = 0;
a=0;

while i < 2 * pi
    %centro
    y = centerY + floor(AproxRadius * sin(i));
    x = centerX + floor(AproxRadius * cos(i));
    if x > 0 && y > 0
        nuevo =  I(centerY + floor(AproxRadius * sin(i)), centerX + floor(AproxRadius * cos(i)));
        if nuevo == 1 || nuevo == 2
            contador = contador + 1;
        end
    end
    i = i + 0.2;
    a = a + 1;
end

if contador > 10
    resp = true;
else
    resp = false;
end
    
end


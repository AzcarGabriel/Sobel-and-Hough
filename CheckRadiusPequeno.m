function resp = CheckRadiusPequeno(I,AproxRadius,original,Center)
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
        if nuevo == 2 || nuevo == 3
            contador = contador + 1;
        end
    end
    i = i + 0.2;
    a = a + 1;
end

if contador > AproxRadius/2
    resp = true;
else
    resp = false;
end
    
end


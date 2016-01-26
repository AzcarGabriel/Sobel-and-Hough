function resp = CheckRadius(I,AproxRadius,Center)

centerX = Center(2);
centerY = Center(1);
i = 0;
contador = 0;
a=0;

if AproxRadius <= 8
    while i < 2 * pi
        %centro
        y = centerY + floor(AproxRadius * sin(i));
        x = centerX + floor(AproxRadius * cos(i));
        if x > 0 && y > 0
            nuevo =  I(centerY + floor(AproxRadius * sin(i)), centerX + floor(AproxRadius * cos(i)));
            if nuevo
                contador = contador + 1;
            end
        end
        i = i + 0.3;
        a = a + 1;
    end
    if contador > 10
        resp = true;
    else
        resp = false;
    end
    
elseif AproxRadius <= 15
    while i < 2 * pi
        y = centerY + floor(AproxRadius * sin(i));
        x = centerX + floor(AproxRadius * cos(i));
        if x > 1 && y > 1
            %centro
            nuevo =  I(y,x);
            %Lados Crudos
            nuevo0 =  I(y - 1,x);
            nuevo1 = I(y + 1,x);
            nuevo2 = I(y,x + 1);
            nuevo3 = I(y,x - 1);
            
            if nuevo||nuevo0||nuevo1||nuevo2||nuevo3
                contador = contador + 1;
            end
        end
        i = i + 0.2;
        a = a + 1;
    end
    
    if contador >= 15
        resp = true;
    else
        resp = false;
    end
    
else
    while i < 2 * pi
        y = centerY + floor(AproxRadius * sin(i));
        x = centerX + floor(AproxRadius * cos(i));
        if y > 2 && x > 2
            %centro
            nuevo =  I(centerY + floor(AproxRadius * sin(i)), centerX + floor(AproxRadius * cos(i)));
            %Lados Crudos
            nuevo0 =  I(centerY + floor(AproxRadius * sin(i)) - 1, centerX + floor(AproxRadius * cos(i)));
            nuevo1 = I(centerY + floor(AproxRadius * sin(i)) + 1, centerX + floor(AproxRadius * cos(i)));
            nuevo2 = I(centerY + floor(AproxRadius * sin(i)), centerX + floor(AproxRadius * cos(i)) + 1);
            nuevo3 = I(centerY + floor(AproxRadius * sin(i)), centerX + floor(AproxRadius * cos(i)) - 1);
            %Diagonales
            nuevo4 = I(centerY + floor(AproxRadius * sin(i)) + 2, centerX + floor(AproxRadius * cos(i)) + 2);
            nuevo5 = I(centerY + floor(AproxRadius * sin(i)) + 2, centerX + floor(AproxRadius * cos(i)) - 2);
            nuevo6 = I(centerY + floor(AproxRadius * sin(i) - 2), centerX + floor(AproxRadius * cos(i)) + 2);
            nuevo7 = I(centerY + floor(AproxRadius * sin(i)) - 2, centerX + floor(AproxRadius * cos(i)) - 2);
            
            if nuevo||nuevo0||nuevo1||nuevo2||nuevo3||nuevo4||nuevo5||nuevo6||nuevo7
                contador = contador + 1;
            end
        end
        
        i = i + 0.1;
        a = a + 1;
    end
    
    if contador >= 30
        resp = true;
    else
        resp = false;   
    end
end

end
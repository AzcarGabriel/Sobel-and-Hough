function I = GabrielEdgeDetector(I)

[N,M,dim] = size(I);
newIHorizontal = I;
newIVertical = I;
i = 1;
j = 1;
blanco = false;

while i <= M
    while j <= N
        if I(j,i) == 1 && blanco
            newIVertical(j,i) = 0;
        elseif I(j,i) == 1 && blanco == false
            blanco = true;
        elseif I(j,i) == 0 && blanco && j > 1
            newIVertical(j-1,i) = 1;
            blanco = false;
        end
        j = j + 1;
    end
    i = i + 1;
    j = 1;
    blanco = false;
    imshow(newIVertical);
end

while j <= N
    while i <= M
        if I(j,i) == 1 && blanco
            newIHorizontal(j,i) = 0;
        elseif I(j,i) == 1
            blanco = true;
        elseif I(j,i) == 0 && blanco && i > 1
            newIHorizontal(j,i-1) = 1;
            blanco = false;
        end
        i = i + 1;
    end
    j = j + 1;
    i = 1;
    blanco = false;
    imshow(newIHorizontal);
end

I = newIHorizontal + newIVertical;

end
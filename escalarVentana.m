function [window, newAproxRadius] = escalarVentana(I,AproxRadius) 

[N,M,dim] = size(I);
if AproxRadius > 15
    factor = (40/N);
    window = imresize(I,factor);
    newAproxRadius = floor(AproxRadius * factor);
else
    window = imresize(I,0.6);
    newAproxRadius = floor(AproxRadius * 0.6);
end

end


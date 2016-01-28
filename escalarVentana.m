function [window, newAproxRadius] = escalarVentana(I,AproxRadius) 

factor = 10/AproxRadius;
window = imresize(I,factor);
newAproxRadius = floor(AproxRadius * factor);

end


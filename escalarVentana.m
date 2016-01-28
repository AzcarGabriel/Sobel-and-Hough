function [window, newAproxRadius] = escalarVentana(I,AproxRadius) 

% [N,M,dim] = size(I);
% if AproxRadius > 15
%     factor = (40/N);
%     window = imresize(I,factor);
%     newAproxRadius = floor(AproxRadius * factor);
% else
% end

factor = 10/AproxRadius;
window = imresize(I,factor);
newAproxRadius = floor(AproxRadius * factor);
end


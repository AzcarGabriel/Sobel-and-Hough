function I = Gauss(I)

H = fspecial('disk',2);
I = imfilter(I,H,'replicate');

end


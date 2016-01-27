function I = Gauss(I,factor)

H = fspecial('disk',factor);
I = imfilter(I,H,'replicate');

end


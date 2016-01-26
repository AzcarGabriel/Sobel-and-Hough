function BallPerceptorSH(I, AproxRadius, BallSpot)
tic

[newI,newBallSpot] = Window(I,AproxRadius,BallSpot);
newI = Gauss(newI);
ultimate = imresize(newI,0.5);
AproxRadius = round(AproxRadius * 0.5);
newI = edge(ultimate,'Sobel',0.01);

%newI = conv2(newI,GaussKernel);
%conv2(IMAGE,FILTER);
% newIX = conv2(newI,sobelXKernel);
% newIY = conv2(newI,sobelYKernel);
% newI = sqrt(newIX*newIX + newIY*newIY);

centro = GabrielHough(newI, AproxRadius);

%CentroReal = realCenter(BallSpot, newBallSpot, centro);
if CheckRadius(newI,AproxRadius,centro)
    newI = insertShape(ultimate, 'circle', [centro(2) centro(1) AproxRadius], 'LineWidth', 1, 'Color', 'green');
    figure
    imshow(newI);
else
    newI = insertShape(ultimate, 'circle', [centro(2) centro(1) 1], 'LineWidth', 1, 'Color', 'red');
    figure 
    imshow(newI);
end

toc
end
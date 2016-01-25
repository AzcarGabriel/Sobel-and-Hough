function BallPerceptorSH(I, AproxRadius, BallSpot)

[newI,newBallSpot] = Window(I,AproxRadius,BallSpot);

% newI = Gauss(newI);
% newI = imsharpen(newI);

newI = edge(newI,'Sobel',0.1);

centro = GabrielHough(newI, AproxRadius);

CentroReal = realCenter(BallSpot, newBallSpot, centro);

newI = insertShape(I, 'circle', [CentroReal(2) CentroReal(1) AproxRadius], 'LineWidth', 1, 'Color', 'green');
imshow(newI);

end
function BallPerceptorSH(I, AproxRadius, BallSpot)

[newI,newBallSpot] = Window(I,AproxRadius,BallSpot);

newI = Gauss(newI);

newI = edge(newI,'Sobel',0.01);

%newI = GabrielEdgeDetector(newI);

centro = GabrielHough(newI, AproxRadius);

CentroReal = realCenter(BallSpot, newBallSpot, centro);

newI = insertShape(I, 'circle', [CentroReal(2) CentroReal(1) AproxRadius], 'LineWidth', 1, 'Color', 'green');
figure
imshow(newI);

end
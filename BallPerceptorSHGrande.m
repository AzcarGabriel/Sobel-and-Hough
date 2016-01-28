function BallPerceptorSHGrande(I0,I1,I2, AproxRadius, BallSpot) %CR CB Y
tic

[newI0,newBallSpot] = Window(I0,AproxRadius,BallSpot);
[newI1,newBallSpot] = Window(I1,AproxRadius,BallSpot);
[newI2,newBallSpot] = Window(I2,AproxRadius,BallSpot);

[newI0,AproxRadius0] = escalarVentana(newI0,AproxRadius);
[newI1,AproxRadius1] = escalarVentana(newI1,AproxRadius);
[newI2,AproxRadius2] = escalarVentana(newI2,AproxRadius);

original = newI2;

newI0 = Gauss(newI0,2);
newI1 = Gauss(newI1,2);
newI2 = Gauss(newI2,2);

newI0 = edge(newI0,'Sobel',0.01);
newI1 = edge(newI1,'Sobel',0.01);
newI2 = edge(newI2,'Sobel',0.01);

newI = newI2 + 2*newI1 + newI0;

centro = GabrielHough(newI,AproxRadius0,AproxRadius);

if CheckRadiusGrande(newI,AproxRadius0,centro)
    newI = insertShape(original, 'circle', [centro(2) centro(1) AproxRadius0], 'LineWidth', 1, 'Color', 'green');
    figure
    imshow(newI);
else
    newI = insertShape(original, 'circle', [centro(2) centro(1) 1], 'LineWidth', 1, 'Color', 'red');
    figure 
    imshow(newI);
end

toc

end



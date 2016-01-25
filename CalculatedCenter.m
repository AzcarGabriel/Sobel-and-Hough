function resp = CalculatedCenter(I,BallSpot,AproxRadius)
%%Insershape (X,Y)
%%BallSpot (Y,X)
tolerance = round(3 * (AproxRadius/4));

bordeSuperior = ScanLine(I,BallSpot,4,tolerance); %%(Y,X)
bordeInferior = ScanLine(I,BallSpot,3,tolerance);%%(Y,X)

if bordeSuperior(1) == 0 || bordeInferior(1) == 0
    resp = InverseCalculatedCenter(I,BallSpot);
else
    newY = round((bordeInferior(1) + bordeSuperior(1))/2);
    newBallSpot = [newY, bordeInferior(2)];
    
    bordeDerecho = ScanLine(I,newBallSpot,1,tolerance);%%(Y,X)
    bordeIzquierdo = ScanLine(I,newBallSpot,2,tolerance);%%(Y,X)
    
    newX = round(((bordeDerecho(2) + bordeIzquierdo(2))/2));
    calculatedCenter = [newY,newX];
    
    resp = calculatedCenter; %(Y,X)
end

end


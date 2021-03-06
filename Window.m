function [window,newBallSpot] = Window(I, AproxRadius, BallSpot)
x = BallSpot(2);
y = BallSpot(1);
diameter = AproxRadius * 2;
[N,M,dim] = size(I);

if y - diameter < 1
    inicioY = 1;
else
    inicioY = y - diameter;
end


if x - diameter < 1
    inicioX = 1;
else
    inicioX = x - diameter;
end


if y + diameter > N
    terminoY = N;
else
    terminoY = y + diameter;
end

if x + diameter > M
    terminoX = M;
else
    terminoX = x + diameter;
end

window = I(inicioY : terminoY , inicioX : terminoX , :);

if inicioY == 1
    inicioY = 0;
end

if inicioX == 1
    inicioX = 0;
end

newBallSpot = [BallSpot(2) - inicioX, BallSpot(1) - inicioY];

end


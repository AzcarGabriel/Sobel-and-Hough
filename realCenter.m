function realCenter = realCenter(BallSpot, newBallSpot, Center)

Xchange = Center(2) - newBallSpot(2);
Ychange = Center(1) - newBallSpot(1);

realCenter(1) = Ychange + BallSpot(1);
realCenter(2) = Xchange + BallSpot(2);

end
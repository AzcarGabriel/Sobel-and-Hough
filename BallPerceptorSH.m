function BallPerceptorSH(I0,I1,I2,AproxRadius,BallSpot) %CR CB Y

if AproxRadius > 20
    BallPerceptorSHGrande(I0,I1,I2,AproxRadius,BallSpot);
else
    BallPerceptorSHPequeno(I0,I1,I2,AproxRadius,BallSpot);
end

end


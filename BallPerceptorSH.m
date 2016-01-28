function BallPerceptorSH(I0,I1,I2,AproxRadius,BallSpot)

if AproxRadius > 20
    BallPerceptorSH1(I0,I1,I2,AproxRadius,BallSpot);
else
    BallPerceptorSH0(I0,I1,I2,AproxRadius,BallSpot);
end

end


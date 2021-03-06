function y = EulerMaruyama(y0,stepSize,stepCount,f,fw,g,gw)
	y = zeros(1,stepCount+1);
    LOW = 0.04 ;
	y(1) = y0;
	for i=1:stepCount
		y(i+1) = y(i)+fw*f(i)*stepSize+gw*g(i)*randn*sqrt(stepSize);
        if y(i+1) < LOW
            y(i+1) = LOW;
        end
	end
end

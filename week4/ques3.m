#!/usr/bin/octave
disp('     mean    stand_dev     diff ');
lambda = 2;

for i=1:6
	p = 10^i;
	data=exprnd(1/lambda, p, 1);
	m=mean(data);
	s=std(data);
	dif=1/lambda - m;
	x = [m,s,dif];
	disp(x);
end

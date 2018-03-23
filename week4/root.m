%QUES 2 Mth root of n upto d digits
function ret = root (n, m=2, d=4)
	flag=0;
	flag2=0;
	if (m<0)
		m=-m;
		flag2=1;
	end
	if (n<0 && mod(m,2)==0)
		n=-1*n;
		flag=2;
	end
	if (n<0 && mod(m,2)==1)
		n=-1*n;
		flag=1;
	end
	g = floor(rand(1)*n);
	while ( !( g^m <= n && (g+1)^m > n ) )
		if (g^m > n)
			g = floor(rand(1)*g);
		else
			g= g+1 + floor(rand(1)*(n-g-1));
		end		
	end
	format long;
	dig=columns(int2str(g));
	output_precision(dig+d);
	for j = 1:d
		e=10^(-j);
		r=floor(rand(1)*10);
		y=mod(r,10)*e;
		g=g+y;
		while ( !( g^m <= n && (g+e)^m > n ) )
			if ( g^m > n )
				r=floor(rand(1)*r);
				g=g-y+r*e;
				y=r*e;
			else
				r=r+1+floor(rand(1)*(10-r-1));
				g=g-y+r*e;
				y=r*e;
			end
		end
	end

	if (flag==0)
		ret=g;
	elseif (flag ==1)
		ret=-1*g;
	elseif (flag ==2)
		ret=( cos(pi/m) + i*sin(pi/m) )*g;
	end
	if (flag2)
		ret=1/ret;
	end
endfunction

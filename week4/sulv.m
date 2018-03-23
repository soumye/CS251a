%Square root using sulvasutra method
function retval = sulv(n,k=100000)
	if (n<0)
		retval='Enter positive num';
		return;
	end
	if (n==0)
		retval=0;
		return;
	end
	count=0;
	for i=1:k
		t=rand(1)*n;
		if(t^2<=n)
			count++;
		end
	end
	retval=n*count/k;
endfunction

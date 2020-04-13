def add(val1,val2)
	return val1+val2
end

def subtract(val1,val2)
	return val1-val2	
end

def multiply(val1,val2)
	if (val1 == 0 || val2 ==0)then return 0 end
	return val1*val2	
end

def sum(vals)
	_sum=0
	vals.length.times do |i|
		_sum+=vals[i]
	end
	return _sum ;
end

def fact(n)
	if( n == 0) then return 1 else return fact(n-1)*n end	
end 

def pow(val,n)
		if( n == 1) then return val else return pow(val,n-1)*val end	
end


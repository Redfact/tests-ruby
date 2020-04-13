def echo(str)
	return str
end

def shout(str)
	return str.upcase
end

def repeat(str,n=2)
		return "#{str} " *n
end
def start_of_word(str,n)
	tmp =String.new
	for i in 1..n do
		tmp<<str[i-1]
	end
	return tmp
end

def first_word(str)
	return str[0..str.index(' ')-1]
end

def titleize(str)
	str1 = str.split(/\W+/)

	str1.map{|str| if( str[0].downcase != 'a' && str[0].downcase != 't')then 
		str[0]=str[0].upcase 
	end}
	str1[0][0]=str1[0][0].upcase
	return str1.join(" ")
end

str = "the bridge over the river kwai"
wrd = str.split

puts titleize(str)
def is_vowel(c)
	return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' 
end

def translate(string)
	str = string.split(/\W+/)

	str.map { |str|
		if( is_vowel(str[0]) )then
			str = str<<"ay"
		elsif( !is_vowel(str[0]) && !is_vowel(str[1]))
			cc = "#{str[0]}#{str[1]}"
			puts cc
			str =str.slice!(cc)
			str= str<<"ay"
		else
			str = str.reverse!<<"ay"
		end
	 }
	
	return str.join(" ")
end
puts translate("cherry")
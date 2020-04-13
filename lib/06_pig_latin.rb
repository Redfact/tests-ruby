def is_vowel(c)
	return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' 
end

def translate_consonant(str,n)
	cc = str[0..n-1]
	str =str[n..str.size]
	str = str<<cc<<"ay"
	return str	
end

def modif_text(str)
	if( is_vowel(str[0]) )then
		str = str<<"ay"
	elsif (  str.include?("sch"))
		puts "ok"
		str.slice!("sch")
		str = str<<"sch"<<"ay"
	elsif (  str.include?("qu"))
		puts "ok"
		str.slice!("qu")
		str = str<<"qu"<<"ay"
	elsif( !is_vowel(str[0]) && !is_vowel(str[1]) && !is_vowel(str[2]) )
		str=translate_consonant(str,3)
	elsif( !is_vowel(str[0]) && !is_vowel(str[1]))
		str=translate_consonant(str,2)	
	else
		str= str[1..str.size]<<str[0]<<"ay"
		
	end
	return str
end

def translate(string)
	str = string.split(/\W+/)
	str =str.map{ |st|	 st=modif_text(st) }	
	return str.join(" ")
end

puts translate("quiet")
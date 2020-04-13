def who_is_bigger(a,b,c)
	if (a== nil || b == nil || c == nil) then return "nil detected" end 
	if(a>b && a>c) then return "a is bigger" end
	if(c>b && c>a) then return "c is bigger" end
	if(b>a && b>c) then return "b is bigger" end
end
who_is_bigger(84, 42, nil)

def reverse_upcase_noLTA(str)
	if( str.include?(",") )then
		return reverse_upcase_noLTA_with_symb(str,',')
	elsif(str.include?(";"))
		return reverse_upcase_noLTA_with_symb(str,';')
	else
	strtmp = str.upcase.reverse
	strtmp =remove_LTA(strtmp)
	return strtmp
	end 
end

def remove_LTA(str)
	str = str.gsub("L", "")
	str = str.gsub("T", "")
	str = str.gsub("A", "")
	return str
end

def reverse_upcase_noLTA_with_symb(str,symb)
	substr1 = str[0..str.index(symb)-1].upcase
	substr1=remove_LTA(substr1)
	substr2 = str[str.index(symb)+1..str.size-1].upcase
	substr2=remove_LTA(substr2)
	return "#{substr2.reverse}#{symb}#{substr1.reverse}"
end

def array_42(array)
	return array.include?(42)	
end

def magic_array (array)
	
	if( array.flatten! != nil) then array=array.flatten! end 
	array = array.map{|i| if(i%3==0)then i=-1 else i*=2 end}.sort
	array.delete(-1)
	return array.uniq
end

def flat_array(array)
	if( array.flatten! != nil) then 
		return flat_array(array.flatten)
	end
			return array

end

array1 = [1, 2, 3, 4, 5, 6]
array2 = [1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]]
array3 = [[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8]

print magic_array(array3)

puts ""
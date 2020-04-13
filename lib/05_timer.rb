def time_string(n=0)
	hr=n/60/60
	mn= (n/60)-(hr*60)
	sc=n%60
	if(n==0)then return "00:00:00" end
	return "%02d:%02d:%02d"%[hr,mn,sc]
	#return "#{hr}:#{mn}:#{sc}"
end

puts time_string()
puts time_string(12)
puts time_string(66)
puts time_string(4000)
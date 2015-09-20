module Arrays
	
	def middles(arr1, arr2)
		[arr1[1], arr2[1]]
	end

	def max(max_array)
		max = 0
		max_array.each do |element|
			if element > max 
				max = element
			end
		end
		max
	end	

	def lucky13?(arr)
		sum = 0
		arr.each do |n|
			if n == 1 || n == 3
				sum += 1
			end
		end
		if sum == 0
			true
		else
			false
		end
	end

	def repeat_separator(word, separator, count)
		string = ""
		(2..count).each do |n|
			string += word + separator
		end
		string += word 
		string
	end

	def same_ends?(array, range)
		string1 = ""
		string2 = ""
		(0...range).each do |n|
			string1 += array[n].to_s
		end
		(array.length - range...array.length).each do |n|
			string2 += array[n].to_s
		end
		string1 == string2
	end

	def starry(string)
		string_array = []
		string = string.downcase
		(0...string.length).each do |n|
			if string[n] == "*"
				string_array.push(string[n-1] + string[n] + string[n + 1])
			end
		end
		(0...string_array.length).each do |n|
			if(string_array[n][0] != string_array[n][2])
				return false
			end
		end
		true
	end
	
	
end
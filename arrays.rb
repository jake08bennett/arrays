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
	
	def same_ends?(ary , n)
		for i in 0...n
		 	if ary[i]!= ary[ary.length-n+i]
		 		return false
		 	end
		 end
		return true 
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

	def plus_it(string, token)
		new_string = "+" * string.length
		token_index = 0 
		while true 
			offset = token_index == 0 ? 0 :  token_index + token.length 
			token_index = string.index(token, offset)
			if token_index == nil 
				return new_string
			else
				for i in 0...token.length 
					new_string[token_index + i] = token[i]
				end
			end
			
		end
	end

	def zero_front(arr)
		new_arr = []
		for element in 0...arr.length
			if arr[element] == 0
				new_arr.push(arr[element])
			end
		end
		for element in 0...arr.length
			if arr[element] > 0 
				new_arr.push(arr[element])
			end
		end
		new_arr
	end

	def ten_run(ten_array)
		multiple = 0
		for element in 0...ten_array.length
			multiple = ten_array[element] if ten_array[element] % 10 == 0
			ten_array[element] = multiple if multiple > 0
		end
		ten_array
	end

	def max_span(max_span_array)
		span = 0 
		for n in 0...max_span_array.length 
			for x in n...max_span_array.length 
				if max_span_array[x] == max_span_array[n]
					span = (1 +(x-n)) if (1+(x-n)) > span && x-n >0
				end
			end
		end
		return span
	end
end

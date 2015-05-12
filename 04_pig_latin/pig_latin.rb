def translate (*words)
	vowels = "aeiou"
	pig_latin_translation = ''
	words[0].split(' ').each do |word|
		puts "word: " + word
		this_translation = ''
		if vowels.count(word[0].downcase) > 0
			# translate words that begin with a vowel.
			this_translation = word + 'ay '
		else
			# translate words that begin with consonant

			# find the postion of the first consonate
			first_consonant_index = 0
			word.downcase.split('').each do |letter|
				if vowels.count(letter) == 0 
					first_consonant_index += 1
				else
					break
				end
			end
			# translate the word moving all beginning consonants to the end of the
			# word and adding 'ay'
			# puts 'word[first_consonant_index..-1]: ' + word[first_consonant_index..-1]

			this_translation = word[first_consonant_index..-1] + word[0..(first_consonant_index-1)] + 'ay '
		end
		# puts 'this_translation: ' + this_translation
		pig_latin_translation += this_translation
	end
	pig_latin_translation[0..-2]
end 

# puts "banana: " + translate("banana").to_s
# puts "carl: " + translate("carl").to_s
# puts "cherry: " + translate("cherry").to_s
# puts "Apple: " + translate("Apple").to_s
# puts "apple: " + translate("apple").to_s

# puts translate("eat pie")

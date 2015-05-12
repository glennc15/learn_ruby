phonemes = ['qu', 'sch']

# Finds phonemes in a word. The only phoneme I have now is 'qu'.
def has_phoneme?(word)
	phonemes = ['qu', 'sch']
	result = false
	phonemes.each do |phoneme|
		if word.index(phoneme) != nil
			result = true
			break
		end 
	end
	result
end

# returns the 1st phoneme found in a word.
def get_phoneme(word)
	phonemes = ['qu', 'sch']
	result = nil
	phonemes.each do |phoneme|
		if word.index(phoneme) != nil
			result = phoneme
			break
		end 
	end
	result
end

# Finds the index of a phoneme in a word. If find_end is true then it returns
# the index after the phoeme.
#
# phoneme_index('quiet', 'qu'): returns 0
# phoneme_index('quiet', 'qu', true): returns 2
def get_phoneme_index(word, phoneme, find_end=false)
	index = word.index(phoneme)
	if find_end 
		index += phoneme.length
	end
	index
end

def translate (*words)
	vowels = "aeiou"
	pig_latin_translation = ''
	capital_letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
	words[0].split(' ').each do |word|
		# Check if the 1st letter is capitalized
		capitalize_first_word = false
		if capital_letters.index(word[0]) != nil
			capitalize_first_word = true
		end
		word.downcase!
		# puts "word: " + word
		this_translation = ''
		if vowels.count(word[0].downcase) > 0
			# translate words that begin with a vowel.
			this_translation = word + 'ay '
		else
			# translate words that begin with consonant
			first_consonant_index = 0
			# Look for a phoneme:
			if has_phoneme?(word)
				phoeme = get_phoneme(word)
				first_consonant_index = get_phoneme_index(word, phoeme, true)
			else
				# find the postion of the first consonate
				word.downcase.split('').each do |letter|
					if vowels.count(letter) == 0 
						first_consonant_index += 1
					else
						break
					end
				end
			end
			# translate the word moving all beginning consonants to the end of the
			# word and adding 'ay'
			# puts 'word[first_consonant_index..-1]: ' + word[first_consonant_index..-1]

			this_translation = word[first_consonant_index..-1] + word[0..(first_consonant_index-1)] + 'ay '
		end

		if capitalize_first_word
			this_translation.capitalize!
		end
		pig_latin_translation += this_translation
	end
	pig_latin_translation[0..-2]
end 

# puts "banana: " + translate("banana").to_s
# puts "carl: " + translate("carl").to_s
# puts "cherry: " + translate("cherry").to_s
# puts "Apple: " + translate("Apple").to_s
# puts "apple: " + translate("apple").to_s
# puts "quiet: " + translate("quiet").to_s
# puts "Quiet: " + translate("Quiet").to_s

# puts translate("eat pie")

# puts "quiet".index('iu').to_s

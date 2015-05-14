# require '../03_simon_says/simon_says'
def titleize(title_sentence)
	# Capitalize the 1st word.
	title_sentence.capitalize!
	words_no_cap = ['and', 'or', 'the', 'over', 'to', 'the', 'a', 'but', 'of', 'in', 'an']
	phrase = title_sentence.split(' ').map {|word|
		if words_no_cap.include?(word)
			word
		else
			word.capitalize
		end
	}.join(' ')
	phrase
end


class Book
	def title=(new_title)
		# @title = new_title.capitalize
		@title = titleize(new_title)

	end

	def title
		@title
	end
end


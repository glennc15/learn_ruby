def echo(word_to_echo)
	"#{word_to_echo}"
end

def shout(word_to_shout)
	"#{word_to_shout.upcase}"
end

def repeat(word_to_repeat, times_to_repeat = 2)
	result = (word_to_repeat << " ") * times_to_repeat
	result[0..-2]
end

def start_of_word(word, clip_position = -1)
	word[0..(clip_position-1)]
end

def first_word(sentence)
	sentence.split[0]
end

# Got this solution form:
# http://stackoverflow.com/questions/15078964/ruby-titleize-how-do-i-ignore-smaller-words-like-and-the-or-etc
def titleize(title_sentence)
	# Capitalize the 1st word.
	title_sentence.capitalize!
	words_no_cap = ['and', 'or', 'the', 'over', 'to', 'the', 'a', 'but']
	phrase = title_sentence.split(' ').map {|word|
		if words_no_cap.include?(word)
			word
		else
			word.capitalize
		end
	}.join(' ')
	phrase
end


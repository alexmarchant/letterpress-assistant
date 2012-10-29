class Board

	def initialize(letters)
		@letters = letters
		@playable_letters = arrayify(@letters)
	end

	def arrayify(string)
		array = []
		string.split("").each do |i|
		  array << i
		end
		return array
	end

	def can_play_word?(word)
		playable_letters_copy = @playable_letters.dup

	    word_letters = []
	    word.split("").each {|i| word_letters << i}

	    word_letters.each_with_index do |letter, index|

	    	word_letter_index = playable_letters_copy.index(letter)

	    	if word_letter_index

	    		if (index + 1) == word_letters.length
	    			return true
	    		end

	    		playable_letters_copy.delete_at(word_letter_index)
	    	else
	    		return false
	    	end
	    end
	end

	def longest_word
		longest_word = ""
		words = Dictionary.words

		words.each do |word|
			if can_play_word?(word)
				if word.length >= longest_word.length
					longest_word = word
				end
			end
		end
		p longest_word
	end
end
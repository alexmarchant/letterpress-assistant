class Dictionary
	
	def self.words
		dictionary_files = []
		dictionary_words = []
		Dir[File.join("./dictionary/*.txt")].each {|d| dictionary_files << d}

		dictionary_files.each do |file|

			File.open( file ).each do |line|
			    word = line.split("\n")[0]
			    word = word.to_s
			    if word != ""
				    dictionary_words << word
				end
			end
		end

		return dictionary_words
	end
end
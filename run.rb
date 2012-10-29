Dir[File.join("./classes/*.rb")].each {|f| require f}
require "pry"

board = Board.new("fqokeptebztcianhhbcbkevwy")

board.longest_word
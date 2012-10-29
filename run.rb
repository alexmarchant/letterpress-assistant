Dir[File.join("./classes/*.rb")].each {|f| require f}
# require "pry"

# Type the letters on the game board in the quotes below, order doesn't matter
board = Board.new("cslearckblolyrdsyczlpmppw")

board.longest_word
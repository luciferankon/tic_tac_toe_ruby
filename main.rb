require_relative "./src/game"

game = Game.new
puts game.makeMove(1).makeMove(4).makeMove(2).makeMove(5).makeMove(9).makeMove(6)
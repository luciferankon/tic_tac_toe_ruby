require_relative "player"

class Game
  def initialize
    @players=[Player.new("ankon","X"),Player.new("chandan","O")]
    @count=1
    @winningCombinations=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
  end

  def makeMove(move)
    @count= 1 - @count
    @players[@count].makeMove(move)
    if(self.won?)
      puts @players[@count].getName+" has won"
    end
    self
  end

  def won?
    @winningCombinations.any? {|combination| @players[@count].moveSet?(combination)}
  end
end
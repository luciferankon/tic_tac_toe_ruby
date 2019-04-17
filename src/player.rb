class Player
  def initialize(name,symbol)
    @name = name
    @symbol = symbol
    @moves = []
  end
  
  def getName
    @name
  end

  def makeMove(move)
    @moves.push(move)
  end

  def moveSet?(moves)
    (moves-@moves).empty?
  end

end
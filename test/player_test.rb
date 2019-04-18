require_relative "../src/player"
require "test/unit"

class TestPlayer < Test::Unit::TestCase
  def setup
    @player = Player.new("ankon","X")
  end

  def test_name
    assert_equal("ankon",Player.new("ankon","X").getName)
  end

  def test_make_move
    @player.makeMove(1)
    assert_equal([1],@player.instance_variable_get(:@moves))
  end

  def test_move_set?
    @player.makeMove(1)
    @player.makeMove(2)
    assert_equal(true,@player.moveSet?([1]))
    assert_equal(true,@player.moveSet?([1,2]))
    assert_equal(false,@player.moveSet?([1,2,3]))
  end
end
require './lib/game'
require './lib/board'
require './lib/player'

describe "#has_won?" do
  board = Board.new
  player1 = Player.new('X')
  player2 = Player.new('O')
  game = Game.new(board, player1, player2)

  it "should check player sign" do
    board.update_board(1, "X")
    board.update_board(2, "X")
    board.update_board(3, "X")
    expect(game.has_won?(player1)).to eql(true)
  end

    describe "#is_finished" do 
      it "should return true if there is a winner" do
      expect(game.is_finished?(board)).to eql(true)
    end
  end
end
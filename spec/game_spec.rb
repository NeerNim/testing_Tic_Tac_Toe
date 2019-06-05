require './lib/game'
require './lib/board'
require './lib/player'

describe "#game_class" do
  let(:board) {Board.new}
  let(:player1) {Player.new('X')}
  let(:player2) {Player.new('O')}
  let(:game) {Game.new(board, player1, player2)}


  describe "#has_won?" do

    it "should check player sign" do
      board.update_board(1, "X")
      board.update_board(2, "X")
      board.update_board(3, "X")
      expect(game.send(:has_won?, player1)).to eql(true)
    end

  end

  describe "#game_is_over?" do 

  it "should return true if there is a winner" do
    board.update_board(1, "X")
    board.update_board(2, "X")
    board.update_board(3, "X")
    expect(game.send(:game_is_over?)).to eql(true)
  end

end
 


end
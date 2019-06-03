require './lib/player.rb'
require './lib/board.rb'
RSpec.describe Player do
    player = Player.new('X')
    board = Board.new

  describe "#make_move" do
    it "puts the sign inside the board cell" do
        expect(player.make_move(board, 2)).to eql(board.board[1])
    end

  end
end
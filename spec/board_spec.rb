require './lib/board'

describe "Board Class" do
  board = Board.new

  it "should have board class" do  
    expect(board.class).to eql(Board)
  end
  
  describe "#update_board" do   
    it "should change the board cell number to character" do
      expect(board.update_board(1, "X")).to eql(board.board[0])
    end
  end 

  describe "#not_full?" do     
    board.update_board(2, "X")
    board.update_board(3, "X")
    board.update_board(4, "X")
    board.update_board(5, "X")
    board.update_board(6, "X")
    board.update_board(7, "X")
    board.update_board(8, "X")
    board.update_board(9, "X")
    
    it "should check all the board is full and return false" do
      expect(board.not_full?).to eql(false)
    end

    it "should check whether the board is empty" do
      board = Board.new
      expect(board.not_full?).to eql(true)
    end
  end 

  describe "#check_sign" do
    it "should should return true if it is integer" do
      expect(board.check_sign(1)).to eql(true)
    end

    it "should should return false if it is a X or O" do
      board.update_board(2, "X")
      expect(board.check_sign(2)).to eql(false)
    end    
  end

  describe "#check_winner" do
    it "should check the consecutive signs and return true or false " do
      board.update_board(1, "X")
      board.update_board(3, "X")
      expect(board.check_winner("X")).to eql(true)
    end
  end
end
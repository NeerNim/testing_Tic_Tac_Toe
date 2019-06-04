require './lib/board.rb'
include UI

RSpec.describe UI do
  
  describe "#decide_other_sign" do
    it "takes the sign and returns the other one" do
      expect(decide_other_sign('X')).to eql('O')
    end
  end


  describe "#play_again" do
    it "takes an answer as Y or N and returns it" do
      stub(:gets) {"N"}
      expect(play_again?).to eql('N')
    end
  end

  describe "#choose_num" do
  it "returns the chosen cell if only its available" do
    board = Board.new
    board.update_board(3, "X")
    stub(:gets) {"2"}
    expect(choose_num(board)).to eql("2")
  end
end

end

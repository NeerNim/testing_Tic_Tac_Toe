require './lib/board.rb'
include UI

describe UI do
     let(:board){ Board.new }
  
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
      board.update_board(3, "X")
      stub(:gets) {"2"}
      expect(choose_num(board)).to eql("2")
    end
  end

  describe "#choose_sign" do

    it "should return X or O when user selects one of the sign" do
      stub(:gets) { "X" }
      expect(choose_sign).to eql("X")
    end

  end

end

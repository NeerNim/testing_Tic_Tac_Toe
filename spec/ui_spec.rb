require './lib/board.rb'
require './lib/game.rb'
require './lib/player.rb'
include UI

describe UI do
     let(:board){ Board.new }
  
  describe "#decide_other_sign" do
    it "takes the sign and returns the other one" do
      expect(decide_other_sign('X')).to eql('O')
    end
  end


  describe "#play_again" do
  before { allow_any_instance_of(Kernel).to receive(:gets).and_return("N") }
    it "takes an answer as Y or N and returns it" do
      expect(play_again?).to eql('N')
    end
  end

  describe "#choose_num" do
  before { allow_any_instance_of(Kernel).to receive(:gets).and_return("2") }
    it "returns the chosen cell if only its available" do
      board.update_board(3, "X")
      expect(choose_num(board)).to eql("2")
    end
  end

  describe "#choose_sign" do
    before { allow_any_instance_of(Kernel).to receive(:gets).and_return("X") }
    it "should return X or O when user selects one of the sign" do
      expect(choose_sign).to eql("X")
    end
  end

  describe "#show_board" do
    it "should return X or O when user selects one of the sign" do
      expect { show_board(board) }.to output.to_stdout 
    end

    it "should show the change in the board" do
      board.update_board(2, "X")
      expect { show_board(board) }.to output.to_stdout 
    end
  end



end

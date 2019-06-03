include UI

RSpec.describe UI do
  describe "#decide_other_sign" do
    it "takes the sign and returns the other one" do
      expect(decide_other_sign('X')).to eql('O')
    end
  end
end

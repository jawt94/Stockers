require 'rails_helper'

describe User do
  let(:tina) {User.new(name:"Tina Fey", email: "Tina@Fey.com", password: "TinaFey1")}
  let(:risky) {tina.portfolios.new(name:"High Risk", cash: 100)}
  let(:frisky) {tina.portfolios.new(name:"High Frisk", cash: 1000)}

  describe "User attributes" do
    context "When the user successfully registers" do
      it "has a name" do
        expect(tina.name).to eq "Tina Fey"
      end
      it "has an email" do
        expect(tina.email).to eq "Tina@Fey.com"
      end
      it "has a password" do
        expect(tina.password).to eq "TinaFey1"
      end
    end
  end

  describe "User association" do
    it "has many portfolios" do
      expect(tina.portfolios).to eq [risky, frisky]
    end
  end

end

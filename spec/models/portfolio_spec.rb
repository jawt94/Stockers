require 'rails_helper'

describe Portfolio do
  let(:tina) {User.new(name:"Tina Fey", email: "Tina@Fey.com", password: "TinaFey1")}
  let(:risky) {tina.portfolios.new(name:"High Risk", cash: 100)}
  let(:frisky) {tina.portfolios.new(name:"High Frisk", cash: 1000)}

  describe "something" do
    context "When the user does this" do
      it "does something" do
        expect(portfolio.method).to eq portfolio.something
      end
    end
  end

end

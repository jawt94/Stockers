require 'rails_helper'

describe User do
  let(:tina) {User.new(name:"Tina Fey", email: "Tina@Fey.com", password: "TinaFey1")}

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
end

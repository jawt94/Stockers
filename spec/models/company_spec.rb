require 'rails_helper'

describe Company do
  let(:fb) {Company.create(name:"Facebook", ticker:"FB", current_price: 133.53)}

  describe "Company attributes" do
    context "When the user looks up a company" do
      it "has a name" do
        expect(fb.name).to eq "Facebook"
      end
    end
  end

end

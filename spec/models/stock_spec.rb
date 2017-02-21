require 'rails_helper'

describe Stock do
  let(:stock) {Stock.new}

  describe "something" do
    context "When the user does this" do
      it "does something" do
        expect(stock.method).to eq stock.something
      end
    end
  end
end

require 'rails_helper'

describe Portfolio do
  let(:portfolio) {Portfolio.new}

  describe "something" do
    context "When the user does this" do
      it "does something" do
        expect(portfolio.method).to eq portfolio.something
      end
    end
  end

end

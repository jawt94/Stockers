require 'rails_helper'

describe Company do
  let(:company) {Company.new}

  describe "something" do
    context "When the user does this" do
      it "does something" do
        expect(company.method).to eq company.something
      end
    end
  end

end

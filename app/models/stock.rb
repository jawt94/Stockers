class Stock < ApplicationRecord
  belongs_to :company
  belongs_to :portfolio
  validates :portfolio_id, :purchase_price, :shares, :company_id, presence: true

  def cost_basis
    (self.purchase_price)*(self.shares)
  end
end

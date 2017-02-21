class Stock < ApplicationRecord
  belongs_to :company
  belongs_to :portfolio
  validates :portfolio_id, :purchase_price, :shares, :company_id, presence: true

  def cost_basis
    (self.purchase_price)*(self.shares)
  end

  def current_price
    yahoo_client = YahooFinance::Client.new
    data = yahoo_client.quotes([self.company.ticker], [:bid, :name], {raw: false})
    response = data[0]
    response['bid'].to_f
  end

  def current_value
    self.current_price * self.shares
  end

  def pnl
    self.current_value - self.cost_basis
  end

  def percent_change
    total = self.pnl / self.cost_basis
    total = total * 100
  end

  def percentage(total_profit)
    self.pnl / total_profit
  end

end

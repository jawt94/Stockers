class Company < ApplicationRecord
  has_many :stocks
  has_many :portfolios, through: :stocks
  validates :name, :ticker, :current_price, presence: true

  def get_company(company)
    yahoo_client = YahooFinance::Client.new
    data = yahoo_client.quotes([company], [:bid, :name, :symbol])
    return data
  end
end

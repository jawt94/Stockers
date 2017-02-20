class Portfolio < ApplicationRecord
  has_many :stocks
  has_many :companies, through: :stocks, foreign_key: :portfolio_id
  validates :name, :user_id, presence: true

  def total_cost_basis
    sum = 0
    self.stocks.each {|stock| sum += stock.cost_basis}
    return sum
  end
end

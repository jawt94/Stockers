class Company < ApplicationRecord
  has_many :stocks
  has_many :portfolios, through: :stocks
  validates :name, :ticker, :purchase_price, presence: true
end

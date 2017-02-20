class Portfolio < ApplicationRecord
  has_many :stocks
  has_many :companies, through: :stocks, foreign_key: :portfolio_id
  validates :name, :user_id, presence: true
end

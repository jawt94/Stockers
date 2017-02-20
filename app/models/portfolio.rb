class Portfolio < ApplicationRecord
  has_many :stocks
  has_many :companies, through: :stocks
  validates :name, :user_id, presence: true
end

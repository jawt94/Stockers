class Stock < ApplicationRecord
  belongs_to :company
  belongs_to :portfolio
  validates :portfolio_id, :company_id, presence: true
end

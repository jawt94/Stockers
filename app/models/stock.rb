class Stock < ApplicationRecord
  belongs_to :company
  belongs_to :portfolio
  validates :portfolio_id, :shares :company_id, presence: true
end

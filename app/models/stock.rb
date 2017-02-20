class Stock < ApplicationRecord
  belongs_to :user, class: "User", foreign_key: :user_id
  belongs_to :company, class: "Company", foreign_key: :company_id

  validates :user_id, :company_id, presence: true
end

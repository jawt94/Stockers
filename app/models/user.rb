class User < ApplicationRecord
  belongs_to :portfolio

  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: { minimum: 1 }

  has_secure_password
end

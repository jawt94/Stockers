class User < ApplicationRecord
  has_many :portfolios

  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: { minimum: 1 }

  has_secure_password
end

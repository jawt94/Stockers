class User < ApplicationRecord
  has_many :portfolios

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }

  has_secure_password
end

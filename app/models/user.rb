class User < ApplicationRecord
  has_secure_password

  validates :email, :username, :password, :rank, presence: true
  validates :email, :username, uniqueness: true

  has_many :logs
  has_many :items, through: :logs
end

class Item < ApplicationRecord
  validates :title, :category, presence: true

  has_many :logs
  has_many :users, through: :logs
end

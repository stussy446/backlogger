class Item < ApplicationRecord
  validates :title, :category, presence: true

  has_many :user_items
  has_many :users, through: :user_items
end

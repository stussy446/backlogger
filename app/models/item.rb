class Item < ApplicationRecord
  validates :title, :category, presence: true
end

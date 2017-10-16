class Item < ApplicationRecord
  validates :title, :category, :creator_id, presence: true
  validates :title, uniqueness: true

  has_many :logs
  has_many :users, through: :logs
  belongs_to :creator, class_name: "User"

  def print_item
    if category != "book"
       "#{title} -- Genre: #{genre} -- Length: #{length} hours"
    else
       "#{title} -- Genre: #{genre} -- Length: #{length} pages"
    end
  end

end

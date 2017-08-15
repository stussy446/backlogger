class Item < ApplicationRecord
  validates :title, :category, presence: true

  has_many :logs
  has_many :users, through: :logs

  def print_item
    if category != "book"
       "#{title} -- Genre: #{genre} -- Length: #{length} hours"
    else
       "#{title} -- Genre: #{genre} -- Length: #{length} pages"
    end
  end

end

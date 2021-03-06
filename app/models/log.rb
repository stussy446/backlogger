class Log < ApplicationRecord
  validates :user_id, :item_id, presence: true

  belongs_to :user 
  belongs_to :item 

  def complete?
    return true if complete == true
  end
end

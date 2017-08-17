class User < ApplicationRecord
  has_secure_password

  validates :email, :username, :password, :rank, presence: true
  validates :email, :username, uniqueness: true

  has_many :logs
  has_many :items, through: :logs
  has_many :owned_items, class_name: "Item", foreign_key: "creator_id"

  
  def already_in_log(item)
    return true if items.include?(item)
  end

  def total_complete
    logs.where(complete: true).length
  end


end

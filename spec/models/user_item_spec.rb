require 'rails_helper'

RSpec.describe UserItem, type: :model do
  let :example_user {User.create(email: "steverector27@gmail.com", username: "stussy446", password: "123")}
  let :example_item {Item.create(title: "Kingdom Hearts", category: "game", genre: "fantasy", length: 30)}
  let :user_item {UserItem.new(user: example_user, item: example_item)}
  let :invalid_user_item {UserItem.new()}

  it 'Is Invalid without a user and item' do 
    expect(user_item.valid?).to eq(true)
    expect(invalid_user_item.valid?).to eq(false)
  end

  it 'belongs to a user' do 
    expect(user_item.user.email).to eq("steverector27@gmail.com")
  end

  it 'belongs to an item' do 
    expect(user_item.item.title).to eq("Kingdom Hearts")
  end
end

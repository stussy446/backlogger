require 'rails_helper'

RSpec.describe Item, type: :model do
  let :item {Item.new(title: "Kingdom Hearts", category: "game", genre: "fantasy", length: 30)}
  let :example_user {User.create(email: "steverector27@gmail.com", username: "stussy446", password: "123")}
  let :invalid_item {Item.new(genre: "fantasy", length: 30)}

  it 'Is invalid without a title and category' do 
    expect(item.valid?).to eq(true)
    expect(invalid_item.valid?).to eq(false)
  end

  it 'has many user items' do 
    item.save
    expect(item.user_items.length).to eq(0)
    item.user_items.create(user: example_user)
    expect(item.user_items.length).to eq(1)
  end

  it 'has many users' do 
    item.save 
    expect(item.users.length).to eq(0)
    item.users << example_user
    expect(item.users.length).to eq(1)
  end
end

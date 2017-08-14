require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let :user {User.new(email: "steverector27@gmail.com", username: "stussy446", password: "123")}
  let :invalid_user {User.new(email: "steverector27@gmail.com", username: "stussy446", password: "123")}
  let :example_item {Item.create(title: "Kingdom Hearts", category: "game", genre: "fantasy", length: 30)}

  it "Is valid with a unique email and invalid without a unique email" do 
    expect(user.valid?).to eq(true)
    user.save 
    expect(invalid_user.valid?).to eq(false)
  end

  it 'has many user_items' do 
    user.save
    expect(user.user_items.length).to eq(0)
    user.user_items.create(item: example_item)
    expect(user.user_items.length).to eq(1)
  end

  it 'has many items' do 
    user.save 
    expect(user.items.length).to eq(0)
    user.items << example_item
    expect(user.items.length).to eq(1)
  end
end

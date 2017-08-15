require 'rails_helper'

RSpec.describe Log, type: :model do
  let :example_user {User.create(email: "steverector27@gmail.com", username: "stussy446", password: "123")}
  let :example_item {Item.create(title: "Kingdom Hearts", category: "game", genre: "fantasy", length: 30)}
  let :log {Log.new(user: example_user, item: example_item)}
  let :invalid_log {Log.new()}

  it 'Is Invalid without a user and item' do 
    expect(log.valid?).to eq(true)
    expect(invalid_log.valid?).to eq(false)
  end

  it 'belongs to a user' do 
    expect(log.user.email).to eq("steverector27@gmail.com")
  end

  it 'belongs to an item' do 
    expect(log.item.title).to eq("Kingdom Hearts")
  end
end

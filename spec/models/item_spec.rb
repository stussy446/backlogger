require 'rails_helper'

RSpec.describe Item, type: :model do
  let :item {Item.new(title: "Kingdom Hearts", category: "game", genre: "fantasy", length: 30)}
  let :invalid_item {Item.new(genre: "fantasy", length: 30)}

  it 'Is invalid without a title and category' do 
    expect(item.valid?).to eq(true)
    expect(invalid_item.valid?).to eq(false)
  end
end

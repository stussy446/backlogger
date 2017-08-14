require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let :user {User.new(email: "steverector27@gmail.com", username: "stussy446", password: "123")}
  let :invalid_user {User.new(email: "steverector27@gmail.com", username: "stussy446", password: "123")}

  it "Is valid with a unique email and invalid without a unique email" do 
    expect(user.valid?).to eq(true)
    user.save 
    expect(invalid_user.valid?).to eq(false)
  end
end

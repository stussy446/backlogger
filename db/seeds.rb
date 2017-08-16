User.delete_all
Item.delete_all
Log.delete_all

categories = ["game", "book", "movie"]
genres = ["horror", "fantasy", "adventure", "science fiction"]

User.create(email: "steverector27@gmail.com", username: "stussy446", password: "123")

50.times do 
  User.create(email: Faker::Internet.email, username: Faker::Internet.user_name, password: "123")
  Item.create(title: Faker::Team.name, category: categories.sample, genre: genres.sample, length: 30)
end


10.times do
  Log.create(user: User.all.sample, item: Item.all.sample)
end

1.times do 
  Log.create(user: User.first, item: Item.all.sample)
end


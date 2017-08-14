User.delete_all
Item.delete_all

categories = ["game", "book", "movie"]
genres = ["horror", "fantasy", "adventure", "science fiction"]

10.times do 
  User.create(email: Faker::Internet.email, username: Faker::Internet.user_name, password: "123")
  Item.create(title: Faker::ElderScrolls.region, category: categories.sample, genre: genres.sample, length: 30)
end


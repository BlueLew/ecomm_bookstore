# User.create!(name: "Lewis", email: "lewis@bookstore.dev", password: "testing1")

# cs_lewis = User.create!(name: "C.S. Lewis", email: "cslewis@cslewis.dev", password: "testing1")

books = [
  { title: "The Screwtape Letters", author_id: 1, price: 10.99 },
  { title: "Mere Christianity", author_id: 1, price: 9.89 },
  { title: "The Problem of Pain", author_id: 1, price: 11.89 },
  { title: "The Lion, the Witch, and the Wardrobe", author_id: 1, price: 16.99 }
]
books.each do |book|
  Book.create!(title: book[:title], price: book[:price])
end

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

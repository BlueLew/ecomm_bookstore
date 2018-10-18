ActiveRecord::Base.transaction do
  User.create!(name: "Lewis", email: "lewis@bookstore.dev", password: "testing1")
  
  books = [
    { title: "The Screwtape Letters", price: 10.99 },
    { title: "Mere Christianity", price: 9.89 },
    { title: "The Problem of Pain", price: 11.89 },
    { title: "The Lion, the Witch, and the Wardrobe", price: 16.99 }
  ]

  author = Author.create(name:"C.S. Lewis")
  content = Book.create(content:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
  consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
  cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
  proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

  books.each do |book|
    Book.create!(title: book[:title], price: book[:price], author: author, content: content)
  end
end

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

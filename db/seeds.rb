ActiveRecord::Base.transaction do
  200.times do
    user = User.create({
      email: Faker::Internet.email,
      name: Faker::Name.name,
      password: Faker::Internet.password,
      author: true
    })
  
    book = Book.create({
      title: Faker::Book.title,
      content: Faker::Lorem.paragraphs,
      author: user,
      price: rand(5..19)
    })
    print "."
  end
end

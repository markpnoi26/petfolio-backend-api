# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#admin user with some credentials

User.create(email: "admin", password: "admin", name: "admin", current_address: "1142 Admin Building St. Admin, ST 12345", about_me: Faker::Lorem.sentence(word_count: 50))

5.times {
  User.create(email: Faker::Internet.email, password: "password", name: Faker::Name.unique.name, current_address: Faker::Address.full_address, about_me: Faker::Lorem.sentence(word_count: 50))
}


30.times {
  Pet.create(name: Faker::Name.first_name, age: Faker::Number.number(digits: 1), animal_type: Faker::Creature::Dog.breed, pet_care: Faker::Lorem.sentence(word_count: 50), user_id: rand(1..6))
}

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: "owner@email.com",
  password: "1234",
  password_confirmation: "1234"
)

User.create(
  email: "backer@email.com",
  password: "password",
  password_confirmation: "password"
)

d1 = Date.new(2016, 10, 31)
d2 = Date.new(2016, 11, 30)

Project.create(
  title: "Jaar",
  description: "Awesome stuff app",
  goal: 100,
  end_date: d1,
  user_id: 1
)

Project.create(
  title: "Iron Man",
  description: "Flying suit of armour",
  goal: 1000000000,
  end_date: d2,
  user_id: 1
)

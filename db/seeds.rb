# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  nickname:  "管理者",
  lastname: "管理者",
  firstname: "管理者",
  lastnameKANA: "管理者",
  firstnameKANA: "管理者",
  birth_date: "2020-04-01",
  email: "admin@gmail.com",
  password:  "11111111",
  password_confirmation: "11111111",
  admin: true)
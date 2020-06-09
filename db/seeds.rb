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
  password:  "00000000",
  password_confirmation: "00000000",
  admin: true
)

  User.create!(
    nickname:  "test1",
    lastname: "test1",
    firstname: "test1",
    lastnameKANA: "test1",
    firstnameKANA: "test1",
    birth_date: "2020-05-01",
    email: "test1@gmail.com",
    password:  "11111111",
    password_confirmation: "11111111"
  )

  User.create!(
    nickname:  "test2",
    lastname: "test2",
    firstname: "test2",
    lastnameKANA: "test2",
    firstnameKANA: "test2",
    birth_date: "2020-06-01",
    email: "test2@gmail.com",
    password:  "22222222",
    password_confirmation: "22222222"
  )



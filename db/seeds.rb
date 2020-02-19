# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = User.create!(first_name: "Jeremy", last_name: "Marc", email: "jojo@yopmail.com", encrypted_password: "foobar", description: "je suis trop un bg !")

b = User.create!(first_name: "john", last_name: "pierre", email: "jaaj@yopmail.com", encrypted_password: "lapoo", description: "je suis trop un bg !")

c = User.create!(first_name: "jack", last_name: "lapo", email: "labo@yopmail.com", encrypted_password: "moosse", description: "je suis trop un bg !")

d = User.create!(first_name: "eric", last_name: "rush", email: "koro@yopmail.com", encrypted_password: "nana", description: "je suis trop un bg !")

e = User.create!(first_name: "anto", last_name: "lemans", email: "kela@yopmail.com", encrypted_password: "abla", description: "je suis trop un bg !")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)
require "open-uri"


Order.destroy_all
Food.destroy_all
User.destroy_all
#User
lucas = User.create!(name: "Lucas", email: "lucas@mail.com", password: '123456')
may = User.create!(name: "May", email: "may@gmail.com", password:'123456')

#Food

file = URI.open("https://img.cybercook.com.br/receitas/774/queijo-coalho-nordestino-2.jpeg")
food = Food.new(
  name: "Queijo Qualho",
  price: 10.00,
  category: 'salgados',
  description:'Um queijo magro!',
  user: lucas
)
food.photo.attach(io: file, filename: "queijo_coalho.png", content_type: "image/png")
food.save


file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/A_Gongonzola_from_Baci.jpg/1200px-A_Gongonzola_from_Baci.jpg")
food = Food.new(
  name: "Queijo Gorgonzola",
  price: 25.00,
  category: 'salgados',
  description:'Sabor mais intenso e diferente',
  user: may
)
food.photo.attach(io: file, filename: "queijo_gorgonzola.png", content_type: "image/png")
food.save

food = Food.new(
  name: "Canjiquinha",
  price: 13.00,
  category: 'doces',
  description:'Feito com milho',
  user: lucas
)
food.save

food = Food.new(
  name: "Pé de Moleque",
  price: 13.00,
  category: 'doces',
  description:'Um doce regional',
  user: may
)
food.save

file = URI.open("https://naruatem.com/wp-content/uploads/2021/06/matuta.png")
food = Food.new(
  name: "Cachaça Matuta",
  price: 12.00,
  category: 'bebidas',
  description:'Cachaça direto do Alabique',
  user: lucas
)
food.photo.attach(io: file, filename: "queijo_gorgonzola.png", content_type: "image/png")
food.save

file = URI.open('https://www.receiteria.com.br/wp-content/uploads/como-fazer-licor-de-menta-1.jpg')
food = Food.new(
  name: "Licor de Menta",
  price: 38.00,
  category: 'bebidas',
  description:'Um delicioso licor!',
  user: may
)
food.photo.attach(io: file, filename: "queijo_gorgonzola.png", content_type: "image/png")
food.save

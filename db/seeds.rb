# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)
Food.destroy_all
User.destroy_all
#User
lucas = User.create!(name: "Lucas", email: "lucas@mail.com", password: '123456')
may = User.create!(name: "May", email: "may@gmail.com", password:'123456')

#Food

Food.create!(
  name: "Queijo Qualho",
  price: 10.00,
  category: 'salgados',
  description:'Um queijo magro!',
  user: lucas,
  image_url: "https://img.cybercook.com.br/receitas/774/queijo-coalho-nordestino-2.jpeg"
)

Food.create!(
  name: "Queijo Gorgonzola",
  price: 25.00,
  category: 'salgados',
  description:'Sabor mais intenso e diferente',
  user: may
)

Food.create!(
  name: "Canjiquinha",
  price: 13.00,
  category: 'doces',
  description:'Feito com milho',
  user: lucas
)

Food.create!(
  name: "Pé de Moleque",
  price: 13.00,
  category: 'doces',
  description:'Um doce regional',
  user: may
)

Food.create!(
  name: "Cachaça Matuta",
  price: 12.00,
  category: 'bebidas',
  description:'Cachaça direto do Alabique',
  user: lucas
)

Food.create!(
  name: "Licor de Menta",
  price: 38.00,
  category: 'bebidas',
  description:'Um delicioso licor!',
  user: may
)

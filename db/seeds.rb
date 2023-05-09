# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#User
User.create(name: "Lucas", email: "lucas@mail.com", password: '1234567')
User.create(name: "May", email: "may@gmail.com", password:'90313ddidcn')

#Food

Food.create(
  name: "Queijo Qualho",
  price: 10.00,
  category: 'salgados',
  description:'Um queijo magro!',
  user_id: 1,
  image_url: "https://img.cybercook.com.br/receitas/774/queijo-coalho-nordestino-2.jpeg"
)

Food.create(
  name: "Queijo Gorgonzola",
  price: 25.00,
  category: 'salgados',
  description:'Sabor mais intenso e diferente',
  user_id: 2
)

Food.create(
  name: "Canjiquinha",
  price: 13.00,
  category: 'doces',
  description:'Feito com milho',
  user_id: 1
)

Food.create(
  name: "Pé de Moleque",
  price: 13.00,
  category: 'doces',
  description:'Um doce regional',
  user_id: 1
)

Food.create(
  name: "Cachaça Matuta",
  price: 12.00,
  category: 'bebidas',
  description:'Cachaça direto do Alabique',
  user_id: 1
)

Food.create(
  name: "Licor de Menta",
  price: 38.00,
  category: 'bebidas',
  description:'Um delicioso licor!',
  user_id: 1
)

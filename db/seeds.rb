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
Food.create(name: "Queijo", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 1)
Food.create(name: "Carne de Sol", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 1)
Food.create(name: "Picanha", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 1)
Food.create(name: "Doce de Leite", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 1)
Food.create(name: "Goiabada", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 1)
Food.create(name: "Bananada", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 1)
Food.create(name: "Cachaca", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 2)
Food.create(name: "Vinho", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 2)
Food.create(name: "Cerveja Artesanal", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 2)
Food.create(name: "Queijo", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 2)
Food.create(name: "Queijo", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 2)
Food.create(name: "Queijo", price: 5.00, category: 'salgados', description:'Um queijo muito gostoso', user_id: 2)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create(category: 'starters')
products = Product.create(name: 'tagliere', price: 100, description: 'good!', category_id: 1)

categories2 = Category.create(category: 'main dishes')
products2 = Product.create(name: 'Pizza', price: 180, description: 'great!', category_id: 2)

categories3 = Category.create(category: 'desserts')
products3 = Product.create(name: 'Tiramisu', price: 75, description: 'so-so!', category_id: 3)
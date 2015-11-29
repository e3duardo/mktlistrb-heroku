# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#   5.times do |i|
#     Product.create(name: "Product ##{i}", description: "A product.")
#   end

@store = Store.create(name: 'Fluminense', description: 'Loja perto da Faculdade Redentor', latitude: '-21.1963157', longitude: '-41.906837,19')

@produto1 = Product.create(name: "Arroz", alias: "Tio zé")
@produto2 = Product.create(name: "Feijão", alias: "Tio joão")


Price.create(store_id: @produto1.id, product_id: @produto1.id, price: 9.75)
Price.create(store_id: @produto2.id, product_id: @produto2.id, price: 4.32)



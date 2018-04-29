# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

item1 = Item.new(item_type: "trousers", price_per_item: 2.00, image: "https://images-na.ssl-images-amazon.com/images/G/01/Shopbop/p/prod/products/clubm/clubm4310012560/clubm4310012560_m3_2-0._QL90_UX208_.jpg")
item1.save
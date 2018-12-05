puts "cleaning the database"


ProductImage.delete_all
Order.delete_all
Product.delete_all
Shipping.delete_all

puts "populating database"

calendar = Product.create(
  name: 'maxi calendrier',
  description: "calendrier géant 2019
janvier à décembre, avec un petit coin pour glisser toutes les notes du mois + un aperçu du mois suivant.

24’ x 32’ (environ 60 x 80 cm)
imprimé sur un papier blanc lisse
douze feuilles reliées.",
price_cents: 5000,
)


montreal = Shipping.create(
  name: "montreal",
  description: "shipping à montréal",
  price_cents: 1500
)


pickup = Shipping.create(
  name: "pickup",
  description: "pickup en boutique",
  price: 0.0
)

puts "all done, you can work now!"

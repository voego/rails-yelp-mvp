# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
# Restaurant.destroy_all

puts 'Creating restaurants...'

restaurants = {
  dishoom: { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: "+491 23 45 67 89", category: "french" },
  pizza_east: { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: "+491 23 45 67 89", category: "italian" },
  a_mano: { name: 'Ristorante A Mano', address: 'Strausberger Platz, Berlin', phone_number: '+491 23 45 67 89', category: 'italian' },
  teppanyaki: { name: 'Teppanyaki Restaurant Sazanka', address: 'Ferdinand Bolstraat, Amsterdam', phone_number: '+311 23 45 67 89', category: 'japanese' },
  sichuan: { name: 'Sichuan Folk', address: 'Shoreditch, London', phone_number: '+441 23 45 67 89', category: 'chinese'}
}

reviews = {
  one: { content: 'I loved the curry', rating: 5, restaurant_id: 1 },
  two: { content: 'I loved the spinach', rating: 4, restaurant_id: 1 },
  three: { content: 'I loved the potatoes', rating: 3, restaurant_id: 1 },
  four: { content: 'I loved the rice', rating: 4, restaurant_id: 1 },
  five: { content: 'I loved the beef', rating: 5, restaurant_id: 1 }
}

restaurants.each_key do |key|
  restaurant = Restaurant.create!(restaurants[key])
  puts "Created #{restaurant.name}"
end

reviews.each_key do |key|
  Review.create!(reviews[key])
  puts "Created review #{key}"
end

puts 'Finished!'

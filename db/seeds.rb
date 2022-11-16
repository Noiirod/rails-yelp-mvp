# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
chez_tonton_adolf = { name: 'Chez tonton Adolf', address: 'montcuq', phone_number: '06 34 56 56', category: 'chinese' }
la_fontaine_a_cum = { name: 'La fontaine à cum', address: 'ikea', phone_number: '06 34 56 56', category: 'french' }
tg_clement = { name: 'TGClement', address: 'decharge publique', phone_number: '06 34 56 56', category: 'italian' }
lalbatros = { name: 'lalbatros', address: 'dans mon cul', phone_number: '06 34 56 56', category: 'belgian' }
aaaaaaaaaah = { name: 'aaaaaaaaaah', address: 'hell', phone_number: '06 34 56 56', category: 'japanese' }

[chez_tonton_adolf, la_fontaine_a_cum, tg_clement, lalbatros, aaaaaaaaaah].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'

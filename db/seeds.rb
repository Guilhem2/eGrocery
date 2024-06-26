# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
User.destroy_all
Checkout.destroy_all
Booking.destroy_all
Basket.destroy_all
Grocery.destroy_all

puts "Creating users..."
john = User.create!(first_name: "John", last_name: "Doe", phone_number: "123456")
john.save!
puts "Users created!"

puts "Creating groceries..."
grocery1 = Grocery.create!(name: "Juicy veggie", address: "12 rue Gaudelet")
grocery1.save!
puts "Groceries created!"

puts "Creating baskets..."
fruit = Basket.create!(name: "Best of fruit", content: "Nice selection of seasonal fruit", price: 20, grocery: grocery1)
veggie = Basket.create!(name: "Best of vegetables", content: "Our selection of seasonal vegetables", price: 18, grocery: grocery1)
fruit_veggie = Basket.create!(name: "Best of today's groceries", content: "All in one basket!", price: 34, grocery: grocery1)
[fruit, veggie, fruit_veggie].each do |basket|
  basket.save!
end
puts "Baskets created!"

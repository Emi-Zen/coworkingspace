# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Space.destroy_all
Booking.destroy_all

User.create!(email: "emilia@example.com", password: "password")

Space.create!(name: "first_space", address: "Paris, France", price: 100, user: User.first)
Space.create!(name: "second_space", address: "Lyon, France", price: 150, user: User.first)
Space.create!(name: "third_space", address: "Nice, France", price: 200, user: User.first)

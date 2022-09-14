# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning up User database..."
User.destroy_all
puts "Database cleaned"
puts "Creating users"

clients = Client.all
clients.length.times do |i|
  client = clients[i]
  User.create!(
    account: client.account,
    password: client.password,
    password_confirmation: client.password,
    email: client.email,
    message: client.message
  )
end

puts "Users created"

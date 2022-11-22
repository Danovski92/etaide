# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Exercise.create!(name: "Deliveroo", description: "Exo MVC", price_per_day: 50, category: "A", response_time: 50, user_id: 1)
Exercise.create!(name: "UberEats", description: "Exo Manger", price_per_day: 30, category: "B", response_time: 20, user_id: 2)

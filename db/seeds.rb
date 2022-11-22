# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating new database..."

Booking.destroy_all
Exercise.destroy_all
User.destroy_all


user1 = User.create!(first_name: "Maxence", last_name: "Hestia", email: "test@gmail.com", password: "1213jJK12")
user2 = User.create!(first_name: "Philippe", last_name: "Hestia", email: "test1@gmail.com", password: "1212jJK12")
user3 = User.create!(first_name: "Daniel", last_name: "Hestia", email: "test2@gmail.com", password: "1214jJK12")
user4 = User.create!(first_name: "Nicolas", last_name: "Hestia", email: "test3@gmail.com", password: "1215jJK12")
user5 = User.create!(first_name: "Bertrand", last_name: "Hestia", email: "test4@gmail.com", password: "1216jJK12")

puts "..."

50.times do

exo1 = Exercise.new(name: "Deliveroo", description: "Exo MVC", price_per_day: 50, category: "A", response_time: 50)
exo1.user = user1
exo1.save

exo2 = Exercise.new(name: "UberEats", description: "Exo Manger", price_per_day: 30, category: "B", response_time: 20)
exo2.user = user2
exo2.save

exo3 = Exercise.new(name: "UberEats", description: "Exo Manger", price_per_day: 30, category: "B", response_time: 20)
exo3.user = user3
exo3.save

exo4 = Exercise.new(name: "UberEats", description: "Exo Manger", price_per_day: 30, category: "B", response_time: 20)
exo4.user = user4
exo4.save

exo5 = Exercise.new(name: "UberEats", description: "Exo Manger", price_per_day: 30, category: "B", response_time: 20)
exo5.user = user5
exo5.save

book1 = Booking.new(start_date: "01/01/2022", end_date: "02/02/2022", user_id: 1, exercise_id: 1)
book1.save

book2 = Booking.new(start_date: "02/02/2022", end_date: "02/02/2022", user_id: 2, exercise_id: 2)
book2.save

book3 = Booking.new(start_date: "03/03/2022", end_date: "02/02/2022", user_id: 3, exercise_id: 3)
book3.save

book4 = Booking.new(start_date: "04/04/2022", end_date: "02/02/2022", user_id: 4, exercise_id: 4)
book4.save

book5 = Booking.new(start_date: "05/05/2022", end_date: "02/02/2022", user_id: 5, exercise_id: 5)
book5.save

puts "Added 5 Exercises, 5 Bookings and 5 User to database !"

end

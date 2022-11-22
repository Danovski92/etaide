# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# post = Post.new(
#   title: Faker::Company.name,
#   url: Faker::Address.zip,
#   votes: rand(0..5)
# )
# post.save!

puts "Creating new database................................."
puts "......................................................"
x=0
10.times do

  x += 1
  user = User.new(
    first_name: "Philippe",
    last_name: "Francisco",
    email: "salut@gmail#{x}.com",
    password: "123456BA"
  )
  user.save!

  exercise = Exercise.new(
    name: Faker::Space.galaxy,
    description: Faker::BossaNova.song,
    price_per_day: rand(0..500),
    category: "A",
    response_time: 50,
    user_id: user.id
  )
  exercise.save!

  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Blockchain::Bitcoin.address
  )
  user.save!

  p user.id
  booking = Booking.new(
    start_date: "01/01/2022",
    end_date: "02/02/2022",
    user_id: user.id,                                 #### ne peut pas etre = à l'user_id de l'exercise
    exercise_id: exercise.id
  )
  booking.save!
  puts "Added 1 Exercises, 1 Bookings and 1 User to database !"
end

puts "......................................................"

  # exo3 = Exercise.new(name: Faker::Space.galaxy, description: Faker::BossaNova.song, price_per_day: rand(0..500), category: "C", response_time: 20)
  # p exo3.user = user3
  # exo3.save

  # exo4 = Exercise.new(name: Faker::Space.galaxy, description: Faker::BossaNova.song, price_per_day: rand(0..500), category: "D", response_time: 20)
  # exo4.user = user4
  # exo4.save

  # exo5 = Exercise.new(name: Faker::Space.galaxy, description: Faker::BossaNova.song, price_per_day: rand(0..500), category: "E", response_time: 20)
  # exo5.user = user5
  # exo5.save


  # book2 = Booking.new(start_date: "02/03/2022", end_date: "03/02/2022", user_id: 2, exercise_id: 2)
  # book2.save

  # book3 = Booking.new(start_date: "03/03/2022", end_date: "04/02/2022", user_id: 3, exercise_id: 3)
  # book3.save

  # book4 = Booking.new(start_date: "04/04/2022", end_date: "05/02/2022", user_id: 4, exercise_id: 4)
  # book4.save

  # book5 = Booking.new(start_date: "05/05/2022", end_date: "06/02/2022", user_id: 5, exercise_id: 5)
  # book5.save




# pour les Booking > user_id != exercise_id

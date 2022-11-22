puts "Creating new database................................."
puts "......................................................"
x = 0
5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456BA"
  )
  user.save!
  puts "....Adding ...#{x + 1}..Users to DB.............."
end

25.times do
  x += 1
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456BA"
  )
  user.save!
  puts "....Adding ...#{x}..Users to DB.............."

  5.times do
    exercise = Exercise.new(
      name: Faker::Space.galaxy,
      description: Faker::BossaNova.song,
      price_per_day: rand(0..500),
      category: "A",
      response_time: rand(30..120),
      user_id: user.id
    )
    exercise.save!
    puts "....Adding ...#{x * 5}..Exercises to DB.............."
    day = rand(1..30).to_s
    month = rand(1..12).to_s
    num = rand(1..4).to_i
    case num
    when 1
      booking = Booking.new(
        start_date: "#{day}/01/2022",
        end_date: "#{day}/#{month}/2022",
        user_id: user.id - 1,                                 #### ne peut pas etre = à l'user_id de l'exercise
        exercise_id: exercise.id
      )
      booking.save!
    when 2
      booking = Booking.new(
        start_date: "#{day}/01/2022",
        end_date: "#{day}/#{month}/2022",
        user_id: user.id - 2,                                 #### ne peut pas etre = à l'user_id de l'exercise
        exercise_id: exercise.id
      )
      booking.save!
    when 3
      booking = Booking.new(
        start_date: "#{day}/01/2022",
        end_date: "#{day}/#{month}/2022",
        user_id: user.id - 3,                                 #### ne peut pas etre = à l'user_id de l'exercise
        exercise_id: exercise.id
      )
      booking.save!
    when 4
      booking = Booking.new(
        start_date: "#{day}/01/2022",
        end_date: "#{day}/#{month}/2022",
        user_id: user.id - 4,                                 #### ne peut pas etre = à l'user_id de l'exercise
        exercise_id: exercise.id
      )
      booking.save!
      puts "....Adding ...#{x * 5}..Bookings to DB.............."
    end
  end
end

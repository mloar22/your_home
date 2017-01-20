require 'faker'

# Create Users
 5.times do
   user = User.new(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10)
   )
  #  user.skip_confirmation!
   user.save!
 end
 users = User.all

 # Note: by calling `User.new` instead of `create`,
 # we create an instance of User which isn't immediately saved to the database.

 # The `skip_confirmation!` method sets the `confirmed_at` attribute
 # to avoid triggering an confirmation email when the User is saved.

 # The `save` method then saves this User to the database.

  # Create Homes
  25.times do
    Home.create!(
    user: users.sample,
    make: Faker::StarWars.vehicle,
    year: Faker::Number.number(4),
    model: Faker::StarWars.specie,
    price: Faker::Commerce.price,
    description: Faker::Lorem.paragraph,
    owner: Faker::StarWars.character,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    )
  end



   user = User.first
  #  user.skip_reconfirmation!
   user.update_attributes!(
     email: 'youremail@fake.com',
     password: 'helloworld'
   )

  homes = Home.all

  puts "Seed finished"
  puts "#{User.count} users created"
  puts "#{Home.count} posts created"

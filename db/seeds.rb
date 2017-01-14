# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # vehicle = vehicle.create([{ make: 'Chevy' }, { year: 1999 }, { model: "swit"}])
  # Mayor.create(name: 'Emanuel', city: cities.first)



v = Home.create(
  make: "Ford",
  year: 1989,
  model: "test",
  price: 2000,
  description: "ue debitis maecenas sed at proin neque. Tincidunt adipiscing dignissim tincidunt enim. Quis augue ac phasellus, aenean lacus ultrices viverra eget donec, felis sed justo, sed nulla proin duis orci. Fusce purus. Congue massa vel, nulla dignissim ornare, ",
  owner:"jim",
  email:"test@test.com",
  phone:123435246
)

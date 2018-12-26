# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name:"beau")
user2 = User.create(name:"anuj")

activity1 = Activity.create(name: "running")

location1 = Location.create(name: "golds gym")

event1 = Event.create(name:"event1", user_id: user1.id, friend_user_id: user2.id, activity_id: activity1.id, location_id: location1.)

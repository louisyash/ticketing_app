# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
event_names = ["Abaho Ladies", "Testing Event", "Crash Shibuya", "年末コンサート", "Awe yeah baby"]
address_list = ["Tokyo Tower", "Niigata", "3338 Vicente Street", "Tokyo Dome", "3456 Lombard Street", "Ferry Building"]

puts "creating users..."

louis = User.create!(email: "louis@test.com", password:"123456", name: "Louis Yasuhiro")
john = User.create!(email: "john@test.com", password:"123456", name: "John Doe")
bobby = User.create!(email: "bobby@test.com", password:"123456", name: "Bobby Jackson")
richard = User.create!(email: "richard@test.com", password:"123456", name: "Richard Nickson")
harrison = User.create!(email: "harrison@test.com", password:"123456", name: "Harrison Ford")

users = [louis, john, bobby, richard, harrison]

puts "creating events..."

5.times do
  Event.create!(name: event_names.sample, address: address_list.sample, user: users.sample, event_date: DateTime.now - 3000)
end

puts "creating tickets..."

5.times do
  Ticket.create!(price: rand(10..100), seat: "4A", event: Event.all.sample)
end

puts "Created #{User.count} users, #{Event.count} events, #{Ticket.count} tickets."

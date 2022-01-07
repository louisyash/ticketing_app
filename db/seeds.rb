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

yoasobi = "https://i.scdn.co/image/ab6761610000e5ebfbe071f5bc42f38d3485a29a"
japanese_band = "https://spice.eplus.jp/images/QiPJZGnt6ndIsc3EqaHuShgFdwgBJOLCKzew99Ri428gPAXENfUP0px8zFQyqdxS"
nogizaka = "https://urbanlife.tokyo/wp-content/uploads/2020/02/200220_idol_01.jpg"
visual_kei = "https://crimsonlotus.eu/wp-content/uploads/2021/04/ran-1400x800.jpg"
boy_band = "https://storage.mantan-web.jp/images/2015/12/25/20151225dog00m200031000c/001_size6.jpg"

pictures = [yoasobi, japanese_band, nogizaka, visual_kei, boy_band]

10.times do
  Event.create!(name: event_names.sample, address: address_list.sample, user: users.sample, event_date: DateTime.now - 3000, photo_url: pictures.sample)
end

puts "creating tickets..."

10.times do
  Ticket.create!(price: rand(10..100), seat: "4A", event: Event.all.sample)
end

puts "Created #{User.count} users, #{Event.count} events, #{Ticket.count} tickets."

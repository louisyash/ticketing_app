# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating users..."

louis = User.create!(email: "louis@test.com", password:"123456", name: "Louis Yasuhiro", artist_name: "Flyers")
lisa = User.create!(email: "lisa@test.com", password:"123456", name: "Lisa Nemoto", artist_name:"LiSA")
ayase = User.create!(email: "ayase@test.com", password:"123456", name: "Ayase", artist_name:"YOASOBI")
lila = User.create!(email: "lila@test.com", password:"123456", name: "Lila Ikuta", artist_name:"YOASOBI")
manatsu = User.create!(email: "nogizaka@test.com", password:"123456", name: "Manatsu Akimoto", artist_name: "乃木坂46")
sho = User.create!(email: "sho@test.com", password:"123456", name: "Sho Sakurai", artist_name: "嵐")

users = [louis, lisa, ayase, lila, manatsu, sho]

puts "creating events..."

yoasobi = "https://i.scdn.co/image/ab6761610000e5ebfbe071f5bc42f38d3485a29a"
japanese_band = "https://spice.eplus.jp/images/QiPJZGnt6ndIsc3EqaHuShgFdwgBJOLCKzew99Ri428gPAXENfUP0px8zFQyqdxS"
nogizaka = "https://urbanlife.tokyo/wp-content/uploads/2020/02/200220_idol_01.jpg"
visual_kei = "https://crimsonlotus.eu/wp-content/uploads/2021/04/ran-1400x800.jpg"
boy_band = "https://storage.mantan-web.jp/images/2015/12/25/20151225dog00m200031000c/001_size6.jpg"
lisa_photo = "https://img2.animatetimes.com/2020/10/5f7c0e5bd431e_6c6274ea83efbe0492202ea0f49dd74e.jpg"

pictures = [yoasobi, japanese_band, nogizaka, visual_kei, boy_band]
event_names = ["サムライスピリット君へ", "Fly Away - 2022 - ","新春爆上げコンサート", "１０周年〜Revival for you〜", "武道館〜Nice to meet you〜", "年末コンサート2022", "Eternal Destiny"]
address_list = ["日本武道館", "横浜スタジアム", "味の素スタジアム", "ペイペイドーム", "札幌ドーム", "埼玉アリーナ"]

Event.create!(name: event_names[0], address: address_list.sample, user: louis, event_date: DateTime.now - 3000, photo_url: japanese_band)
Event.create!(name: event_names[1], address: address_list.sample, user: lisa, event_date: DateTime.now - 2000, photo_url: lisa_photo)
Event.create!(name: event_names[2], address: address_list.sample, user: ayase, event_date: DateTime.now - 1000, photo_url: yoasobi)
Event.create!(name: event_names[4], address: address_list.sample, user: manatsu, event_date: DateTime.now + 200, photo_url: nogizaka)
Event.create!(name: event_names[5], address: address_list.sample, user: sho, event_date: DateTime.now + 60, photo_url: boy_band)
Event.create!(name: event_names[6], address: address_list.sample, user: lisa, event_date: DateTime.now + 80, photo_url: lisa_photo)
Event.create!(name: event_names[3], address: address_list.sample, user: lila, event_date: DateTime.now + 100, photo_url: yoasobi)

puts "creating tickets..."

10.times do
  Ticket.create!(price: rand(10..100), seat: "4A", event: Event.all.sample)
end

puts "Created #{User.count} users, #{Event.count} events, #{Ticket.count} tickets."

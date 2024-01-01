football_players = [
  "Lionel Messi",
  "Cristiano Ronaldo",
  "Neymar",
  "Kylian Mbappé",
  "Mohamed Salah",
  "Luka Modrić",
  "Kevin De Bruyne",
  "Sergio Ramos",
  "Luis Suárez",
  "Eden Hazard",
]

User.destroy_all
Player.destroy_all
Favorite.destroy_all


test_user = User.create!(
  username: "test_user",
  email: "test@email.com",
  password: 'password'
)

football_players.each do |name|
  Player.create!(
    name: name
  )
end

Player.all.sample(5).each do |player|
  Favorite.create!(
    user: test_user,
    player: player
  )
end

puts "#{User.count} users created"
puts "#{Player.count} players created"
puts "#{Favorite.count} favorites created"

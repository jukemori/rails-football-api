User.destroy_all
Player.destroy_all
Favorite.destroy_all

5.times do
  User.create!(
    username: Faker::Internet.unique.username,
    email: Faker::Internet.unique.email,
    password: 'password'
  )
end

10.times do
  Player.create!(
    name: Faker::Name.unique.name,
    api_id: Faker::Alphanumeric.unique.alphanumeric(number: 10)
  )
end

User.all.each do |user|
  Player.all.sample(5).each do |player|
    Favorite.create!(
      user: user,
      player: player
    )
  end
end

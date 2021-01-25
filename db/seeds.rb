# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'httparty'

url = "https://api.boardgameatlas.com/api/search?order_by=popularity&ascending=false&pretty=true&client_id=ewGvicQBqR"
byebug
response = HTTParty.get(url)



User.destroy_all
Community.destroy_all
Game.destroy_all
Session.destroy_all
UserCommunity.destroy_all
UserSession.destroy_all

10.times do
    User.create(
        name: Faker::Name.name, 
        username: Faker::Internet.username, 
        password: Faker::Internet.password, 
        email: Faker::Internet.safe_email)
end

20.times do
    Community.create(
        title:  "#{Faker::Game.title} Community",
        bio: Faker::Hipster.paragraph(sentence_count: 2)
    )
end

20.times do
    Game.create(
        title: Faker::Game.title,
        min_players: Faker::Number.within(range: 2..4),
        max_players: Faker::Number.within(range: 4..8)
    )
end


20.times do
    game = Game.all.sample
    Session.create(
        date: Faker::Date.forward(days: 30),
        game_id: game.id
    )
end

30.times do
    community = Community.all.sample
    user = User.all.sample
    UserCommunity.find_or_create_by(
        user_id: user.id,
        community_id: community.id
    )
end

30.times do
    user = User.all.sample
    session = Session.all.sample
    UserSession.find_or_create_by(
        user_id: user.id,
        session_id: session.id
    )
end

puts "#{User.all.count} users"
puts "#{Game.all.count} games"
puts "#{Community.all.count} communities"
puts "#{Session.all.count} sessions"
puts "#{UserCommunity.all.count} user_communities"
puts "#{UserSession.all.count} user_sessions"
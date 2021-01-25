# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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

10.times do
    Community.create(
        title:  "#{Faker::Game.title} Community",
        bio: Faker::Hipster.paragraph(sentence_count: 2)
    )
end

10.times do
    Game.create(
        title: Faker::Game.title,
        min_players: Faker::Number.within(range: 2..4),
        max_players: Faker::Number.within(range: 4..8)
    )
end


10.times do
    Session.create(
        date: Faker::Date.forward(days: 30),
        game_id: Game.all.sample
    )
end

10.times do
    UserCommunity.create(
        user_id: User.all.sample,
        community_id: Community.all.sample
    )
end

10.times do
    UserSession.create(
        user_id: User.all.sample,
        session_id: Session.all.sample
    )
end
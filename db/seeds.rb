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
        name: , 
        username: , 
        password: , 
        email: ,)
end

10.times do
    Community.create(
        title: ,
        bio: ,
    )
end

10.times do
    Game.create(
        title: ,
        min_player: ,
        max_player: ,
    )
end


10.times do
    Session.create(
        date: ,
        game_id: ,
    )
end

10.times do
    UserCommunity.create(
        user_id: ,
        community_id: ,
    )
end

10.times do
    UserSession.create(
        user_id: ,
        session_id: ,
    )
end
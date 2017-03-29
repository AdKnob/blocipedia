require 'faker'

50.times do

   User.create!(

    email: Faker::Internet.email,
    password: "password"

   )

 end

 users = User.all

 50.times do

   Wiki.create!(

   title: Faker::RockBand.name,
   body: Faker::Lorem.sentence,
   private: Faker::Boolean.boolean,
   user: users.sample

   )
 end

 wikis = Wiki.all

 puts "Seed finished"
 puts "#{users.count} users created"
 puts "#{wikis.count} wikis created"

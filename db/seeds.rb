require 'faker'

50.times do

   User.create!(

    email: Faker::Internet.email,
    encrypted_password: "password"

   )

 end

 user = User.all

 50.times do

   Wiki.create!(

   title: Faker::RockBand.name,
   body: Faker::Lorem.sentence,
   private: Faker::Boolean.boolean
   user: users.sample

   )
 end

 items = Item.all

 puts "Seed finished"
 puts "#{users.count} users created"
 puts "#{wikis.count} wikis created"

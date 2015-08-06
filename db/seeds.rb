require 'faker'

5.times do
  user = User.new(
    name:    Faker::Name.name,
    email:   Faker::Internet.email,
    password: Faker:: Lorem.characters(10)
    )
  user.skip_confirmation!
  user.save!
end
users = User.all

50.times do
  item = Item.new(
    user: users.sample,
    name:   Faker::Lorem.sentence
    )
  item.save!
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
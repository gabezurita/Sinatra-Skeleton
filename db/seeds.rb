# require 'faker'
#
# User.delete_all
# Channel.delete_all
# Subscription.delete_all
#
# users = 100.times.map do
#   User.create!( :first_name => Faker::Name.first_name,
#                 :last_name  => Faker::Name.last_name,
#                 :email      => Faker::Internet.email,
#                 :password   => 'password' )
# end
#
# channels = ["Telemundo", "Unimas ", "Azteca 13", "Mexiquense",
#  "ESPN", "Fox Sports", "NBC Sports", "Big Ten Network", "Nickelodeon"].map do |name|
#   Channel.create!(:name            => name,
#                   :callsign        => name[0..2].upcase,
#                   :price_per_month => Faker::Commerce.price)
# end
#
# users.each do |user|
#   user_channels = channels.sample(rand(2..4))
#   user_channels.each do |channel|
#     Subscription.create!(user: user,
#                          channel: channel)
#   end
# end

# EXAMPLE 2:
# require 'faker'
#
# 10.times do
#   Entry.create!(title: Faker::Lorem.words(num = 3).join(" "),
#     body: Faker::Lorem.sentences(sentence_count = 2).join("  "))
# end
#
# Tag.create!(name: "Sexy")
#
# Tagging.create!(entry_id: 1, tag_id: 1, user_id: 1)
#
# User.create!(username: "Gabo", email: "gabo@gabo.com", password: "password" )

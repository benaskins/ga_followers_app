# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def followers_of(user)
  user.followers.map { |f| f.name }.join(', ')
end

ben = User.create(:name => "Ben")
hiroshi = User.create(:name => "Hiroshi")
josephine = User.create(:name => "Josephine")
stephen = User.create(:name => "Stephen")

ben.followeds << hiroshi
ben.followeds << josephine

stephen.followeds << josephine

hiroshi.followeds << ben

puts "Ben's followers: #{followers_of(ben)}"
puts "Hiroshi's followers: #{followers_of(hiroshi)}"
puts "Josephine's followers: #{followers_of(josephine)}"
puts "Stephen's followers: #{followers_of(stephen)}"


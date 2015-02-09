# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Comment.delete_all
Post.delete_all

user1 = User.create!( name: Faker::Name.name )
user2 = User.create!( name: Faker::Name.name )
user3 = User.create!( name: Faker::Name.name )

post1 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user_id: user1.id
)

post2 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user_id: user1.id
)

post3 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user_id: user2.id
)

Comment.create!(
  user_id: user3.id,
  post_id: post1.id,
  body: Faker::Lorem.paragraph
)

Comment.create!(
  user_id: user2.id,
  post_id: post1.id,
  body: Faker::Lorem.paragraph
)

Comment.create!(
  user_id: user1.id,
  post_id: post3.id,
  body: Faker::Lorem.paragraph
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

development = Tag.create(name: 'development')
web = Tag.create(name: 'web')
php = Tag.create(name: 'php')

(1..10).each do |n|
  post = Post.new(title: Faker::Name.title, text: Faker::Lorem.paragraphs(5).join('.<br />'))
  post.tags << development
  post.save
end

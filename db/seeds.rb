# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Section.destroy_all
Lesson.destroy_all

sections = Section.create([{ title: 'Getting started at Epicodus', order: 1 },
                           { title: 'Getting started with Rails', order: 2 },
                           { title: 'Ruby on Rails Basics', order: 3 },
                           { title: 'Rails Authentication', order: 4 },
                           { title: 'Building an E-Commerce Site with AJAX and APIs', order: 5 },
                           { title: 'Building an API', order: 6 },
                           { title: 'Independent Capstone Projects', order: 7 }])

lesson_list = [
  #Section 1
  ['Growth Mindset', 'content', 1, 1],
  ['Making Epicodus an Inclusive Place', 'content', 2, 1],
  ['Pair Programming', 'content', 3, 1],
  ['How to Ask for Help', 'content', 4, 1],
  ['Curriculum Details', 'content', 5, 1],
  ['Independent Projects and Code Reviews', 'content', 6, 1],
  ['Weekly Schedule', 'content', 7, 1],
  ['Making the Most of Code School', 'content', 8, 1],
#Section 2
  ['Welcome to Ruby on Rails', 'content', 1, 2],
  ['Documentation and Resources', 'content', 2, 2],
  #Section 3
  ['Rails Setup and Structure', 'content', 1, 3],
  ['Database Scopes and Queries', 'content', 2, 3],
  ['Relationships in Rails', 'content', 3, 3],
  ['Integration testing', 'content', 4, 3],
  ['Deploying to Heroku', 'content', 5, 3],
  #Section 4
  ['Rails Authentication Objectives', 'content', 1, 4],
  ['Sending Emails', 'content', 2, 4],
  ['Helper Methods', 'content', 3, 4],
  #Section 5
  ['Adding a Shopping Cart', 'content', 1, 5],
  ['Making API Calls in Rails', 'content', 2, 5],
  ['Getting started with AJAX', 'content', 3, 5],
  ['Further Exploration with AJAX Integration Testing', 'content', 4, 5],
]

lesson_list.each do |tname, tcontent, torder, tsection_id|
  Lesson.create(name: tname, content: tcontent, order: torder, section_id: tsection_id)
end

# Lesson.destroy_all
#
# 10.times do |index|
#   Lesson.create!(name: Faker::Food.spice,
#                 content: Faker::Lorem.sentence(20, false, 0).chop,
#                 order: Fa)
# end
#
# p "Created #{Spice.count} spices"

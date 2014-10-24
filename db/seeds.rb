# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create!(name:  "Example User",
#              email: "example@railstutorial.org",
#              password:              "foobar",
#              password_confirmation: "foobar",
#              admin: true)

# 99.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name:  name,
#                email: email,
#                password:              password,
#                password_confirmation: password)
# end
# users = User.order(:created_at).take(6)
# 50.times do
#   content = Faker::Lorem.sentence(5)
#   users.each { |user| user.events.create!(content: content) }
# end

events = Event.create([
  {
    category: 'adfs',
    attendees: '130',
    organizer: 'Robert Natata',
    order: 'sdag',
    subcategory: 'asg',
    venue: '673457 N Newyok Ave, NY',
    event: 'art',
    user_id: '13223',
    created_at: '',
    updated_at: '',
    picture: ''
  },
  {
    category: 'adfs',
    attendees: '130',
    organizer: 'Robert Natata',
    order: 'sdag',
    subcategory: 'asg',
    venue: '673457 N Newyok Ave, NY',
    event: 'art',
    user_id: '13223',
    created_at: '',
    updated_at: '',
    picture: ''
  },
  {
   category: 'adfs',
    attendees: '130',
    organizer: 'Robert Natata',
    order: 'sdag',
    subcategory: 'asg',
    venue: '673457 N Newyok Ave, NY',
    event: 'art',
    user_id: '13223',
    created_at: '',
    updated_at: '',
    picture: ''
  }
  ])
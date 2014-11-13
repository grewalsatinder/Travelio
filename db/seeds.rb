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
    category: 'Fair',
    attendees: '130',
    organizer: 'Robert Natata',
    order: '001',
    subcategory: 'exibation',
    venue: '673457 N Newyok Ave, NY',
    event: 'art',
    user_id: '13223',
    created_at: '',
    updated_at: '',
    picture: ''
  },
  {
    category: 'Sports',
    attendees: '1200',
    organizer: 'Jhon Methew',
    order: '003',
    subcategory: 'soccer',
    venue: '837 N hudson Ave, OT',
    event: 'fun',
    user_id: '146546',
    created_at: '',
    updated_at: '',
    picture: ''
  },
  {
   category: 'car show',
    attendees: '2560',
    organizer: 'Micah Rich',
    order: '005',
    subcategory: 'Luxrey',
    venue: '53 N caralona Ave, CA',
    event: 'Show',
    user_id: '4325437',
    created_at: '',
    updated_at: '',
    picture: ''
  }
  ])

promotions = Promotion.create([
  {
    food: 'Chinese',
    health: 'GoldGym',
    education: 'Science',
    tech: 'hardware',
    gear: 'headphones'
},{
    food: 'Indian',
    health: 'LAFitness',
    education: 'Mathematics',
    tech: 'software',
    gear: 'computers'
},{
    food: 'Continental',
    health: '24x7',
    education: 'Spanish',
    tech: 'Mobile',
    gear: 'Gps'
}
])

shopping = Shopping.create([
  {
    suvenir: 'keychains',
    gifts: 'perfume',
    tshirts: 'branded',
    mugs: 'with signs'
    }, {
    suvenir: 'pictures',
    gifts: 'jewelary',
    tshirts: 'city name',
    mugs: 'with picture'
    }, {
    suvenir: 'sculptures',
    gifts: 'pen',
    tshirts: 'printed',
    mugs: 'with designe'
    }
])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user1 = User.new({
#   email: 'joshua.sanderlin@gmail.com',
#   password: 'password',
#   username: 'jsanderlin',
#   firstname: 'Josh',
#   lastname: 'Sanderlin',
#   signature: 'bombs away'
# })
# user1.skip_confirmation!
# user1.save!

10.times do
  # Create a Faker user
  user = User.new({
    email: Faker::Internet.email,
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    password: 'password',
    signature: Faker::StarWars.quote,
    username: Faker::Friends.character.gsub(/\s/, '')
  })
  user.skip_confirmation!
  user.save!

  # Create five topics from this user
  5.times do
    topic = Topic.new({
      title: Faker::Hacker.say_something_smart,
      description: Faker::Hipster.paragraphs(3).join('<br><br>'),
      user_id: user.id
    })
    topic.save!
  end
end

require 'faker'

User.destroy_all if Rails.env.development?
Band.destroy_all if Rails.env.development?
Genre.destroy_all if Rails.env.development?
Instrument.destroy_all if Rails.env.development?

genres = ["Blues","Classic Rock","Country","Dance","Disco","Funk","Grunge",
"Hip-Hop","Jazz","Metal","New Age","Oldies","Other","Pop","R&B",
"Rap","Reggae","Rock","Alternative","Ska"]

instruments = ["bass", "drums", "guitar", "keyboard", "singer", "strings", "brass", "woodwind"]

cities = ["Hamburg", "München", "Berlin", "Bremen", "Frankfurt", "Dortmund", "Köln"]


genres.each do |genre|
  Genre.create(name: genre)
end

instruments.each do |instrument|
  Instrument.create(name: instrument)
end

user1 = User.new(
  username: 'Rudi',
  email: 'rudi@gmail.com',
  password: '123456',
  description: 'geiler Bassist',
  fee: 100,
  city: 'Jembke',
  musician: true,
  genre: Genre.find(Genre.pluck(:id).shuffle.first),
  instrument: Instrument.find(1)
  )
user1.save!

user2 = User.new(
  username: 'Stefan',
  email: 'stefan@gmail.com',
  password: '123456',
  description: 'geiler Schlagzeuger',
  fee: 200,
  city: 'Berlin',
  musician: true,
  genre: Genre.find(Genre.pluck(:id).shuffle.first),
  instrument: Instrument.find(2)
  )
user2.save!

user3 = User.new(
  username: 'Vera',
  email: 'Vera@gmail.com',
  password: '123456',
  description: 'just a manager',
  city: 'Berlin',
  musician: false,
  )
user3.save!



20.times do
user = User.new(
  username: Faker::FunnyName.name,
  email: Faker::Internet.email,
  password: '123456',
  description: 'Hi, I am god on my instrument, please let me be your substitute!',
  city: cities.sample,
  musician: true,
  instrument: Instrument.find(3),
  level: [1, 2, 3, 4, 5].sample,
  fee: [1, 2, 3, 4, 5].sample * 100,
  genre: Genre.find(Genre.pluck(:id).shuffle.first),
  birthday: Faker::Date.birthday(min_age: 18, max_age: 55)
  )
user.save!
end



3.times do
  band = Band.new(
    user_id: user3.id,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    genre: Genre.find(Genre.pluck(:id).shuffle.first),
    instrument: Instrument.find(3),
    )
  band.save!
end

3.times do
  band = Band.new(
    user_id: user3.id,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    genre: Genre.find(Genre.pluck(:id).shuffle.first),
    instrument: Instrument.find(3),
    )
  band.save!
end

3.times do
  band = Band.new(
    user_id: user3.id,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    genre: Genre.find(Genre.pluck(:id).shuffle.first),
    instrument: Instrument.find(3),
    )
  band.save!
end



puts 'importing finished'

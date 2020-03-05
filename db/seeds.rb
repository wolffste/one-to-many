require 'faker'

User.destroy_all if Rails.env.development?
Band.destroy_all if Rails.env.development?
Genre.destroy_all if Rails.env.development?
Instrument.destroy_all if Rails.env.development?

genres = ["Blues","Classic Rock","Country","Dance","Disco","Funk","Grunge",
"Hip-Hop","Jazz","Metal","New Age","Oldies","Other","Pop","R&B",
"Rap","Reggae","Rock","Alternative","Ska"]

instruments = ["bass", "drums", "guitar", "keyboard", "singer", "strings" "brass", "woodwind"]


genres.each do |genre|
  Genre.create(name: genre)
end

instruments.each do |instrument|
  Instrument.create(name: instrument)
end

# genre = Genre.last

user1 = User.new(
  username: 'Rudi',
  email: 'rudi@gmail.com',
  password: '123456',
  description: 'nice band',
  fee: 100,
  city: 'Jembke',
  musician: true,
  genre: Genre.find(Genre.pluck(:id).shuffle.first)
  instrument: Instrument.find(Instrument.pluck(:id).shuffle.first)

  )
user1.save!

user2 = User.new(
  username: 'Stefan',
  email: 'stefan@gmail.com',
  password: '123456',
  description: 'very nice band',
  fee: 200,
  city: 'Berlin',
  musician: true,
  genre: Genre.find(Genre.pluck(:id).shuffle.first)
  instrument: Instrument.find(Instrument.pluck(:id).shuffle.first)
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

3.times do
  band = Band.new(
    user_id: user1.id,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    genre: Genre.find(Genre.pluck(:id).shuffle.first)
    instrument: Instrument.find(Instrument.pluck(:id).shuffle.first)
    )
  band.save!
end

3.times do
  band = Band.new(
    user_id: user2.id,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    genre: Genre.find(Genre.pluck(:id).shuffle.first)
    instrument: Instrument.find(Instrument.pluck(:id).shuffle.first)
    )
  band.save!
end

3.times do
  band = Band.new(
    user_id: user3.id,
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    genre: Genre.find(Genre.pluck(:id).shuffle.first)
    instrument: Instrument.find(Instrument.pluck(:id).shuffle.first)
    )
  band.save!
end



puts 'importing finished'

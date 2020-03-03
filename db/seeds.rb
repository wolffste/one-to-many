require 'faker'



  genres = ["Blues","Classic Rock","Country","Dance","Disco","Funk","Grunge",
 "Hip-Hop","Jazz","Metal","New Age","Oldies","Other","Pop","R&B",
 "Rap","Reggae","Rock","Alternative","Ska"]


  genres.each do |genre|
    Genre.create(name: genre)
  end

  puts 'finished import bands'

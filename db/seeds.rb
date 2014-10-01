# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Venue.delete_all
Event.delete_all
Band.delete_all


v1 = Venue.create(name: "Barclays Center", city: "Brooklyn", state: "NY")
v2 = Venue.create(name: "Best Buy Theater", city: "New York", state: "NY")
v3 = Venue.create(name: "Madison Square Garden", city: "New York", state: "NY")
v4 = Venue.create(name: "Buffalo Convention Center", city: "Buffalo", state: "NY")

e1 = Event.create(date: Date.today, venue_id: 1, band_id: 1)
e2 = Event.create(date: Date.tomorrow, venue_id: 2, band_id: 2)
e3 = Event.create(date: Date.tomorrow, venue_id: 3, band_id: 3)
e4 = Event.create(date: Date.tomorrow, venue_id: 4, band_id: 4)

b1 = Band.create(name: "Object" ,genre: "Rock")
b2 = Band.create(name: "The Catskills" ,genre: "Indie")
b3 = Band.create(name: "The Evil Us" ,genre: "Avant Metal" ,explicit_lyrics: true)
b4 = Band.create(name: "The Psychic Fits" ,genre: "Surf Rock")


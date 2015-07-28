# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

comedy = Category.create(name: "Comedies")
Video.create(title: "Futurama", description: "Space Age", small_cover_url: "/tmp/monk.jpg", category: comedy)
Video.create(title: "Simpson", description: "Space Age", small_cover_url: "/tmp/monk.jpg", category: comedy)
Video.create(title: "Homer", description: "Space Age", small_cover_url: "/tmp/monk.jpg",  category: comedy)
Video.create(title: "Family Guy", description: "Space Age", small_cover_url: "/tmp/monk.jpg",  category: comedy)
Video.create(title: "Hotdog", description: "Space Age", small_cover_url: "/tmp/monk.jpg",  category: comedy)
Video.create(title: "Something", description: "Space Age", small_cover_url: "/tmp/monk.jpg",  category: comedy)
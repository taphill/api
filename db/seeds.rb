# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Shelter.destroy_all

Shelter.create!(name: 'Eget Arcu', city: 'South Andrew', state: 'LA', rank: 1, foster_program: true)
Shelter.create!(name: 'Sed Vulputate', city: 'Lake Skyefurt', state: 'TN', rank: 2, foster_program: true)
Shelter.create!(name: 'Nulla Facilisi', city: 'Hilmaton', state: 'PA', rank: 3, foster_program: false)
Shelter.create!(name: 'Pellentesque Nec', city: 'North Allan', state: 'UT', rank: 4, foster_program: false)

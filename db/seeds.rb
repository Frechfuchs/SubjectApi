# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require_relative 'seeds/users'
require_relative 'seeds/subjects'

puts 'Seeding...'

puts 'Seeding Users...'
seed_users

puts 'Seeding Subjects...'
seed_subjects

puts 'Seeding finished!'


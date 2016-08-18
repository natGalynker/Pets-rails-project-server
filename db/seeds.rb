# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

Pet.create(name: 'Example Name', breed: 'Dog', born_on: '2016-09-01', gender: 'f')
User.create(email: 'he', password: 'vet123', password_confirmation: 'vet123')

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

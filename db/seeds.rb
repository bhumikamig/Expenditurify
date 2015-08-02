# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
items = Item.create([{ name: 'Banana', color: 'Blue', description: 'Banana'}, { name: 'Apple', color: 'Green', description: 'Apple'},
  { name: 'Mango', color: 'Red', description: 'Mango'}, { name: 'Petrol', color: 'Black', description: 'Petrol'}, { name: 'Kerosene', color: 'Brown', description: 'Kerosene'},
  { name: 'Telephone', color: 'Grey', description: 'Telephone'}, { name: 'Internet', color: 'Pink', description: 'Internet'}, { name: 'Electricity', color: 'Orange', description: 'Electricity'}])
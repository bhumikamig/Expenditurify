# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
items = Item.create([{ name: 'Milk', color: 'Blue'}, { name: 'Veg', color: 'Green'},
  { name: 'Fruits', color: 'Red'}, { name: 'Petrol', color: 'Black'}, { name: 'Grocery', color: 'Brown'},
  { name: 'Telephone', color: 'Grey'}, { name: 'Internet', color: 'Pink'}, { name: 'Electricity', color: 'Orange'}])
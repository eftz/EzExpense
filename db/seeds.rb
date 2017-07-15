# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding Billing information...'
Bill.create([
	{
		name: 'Taxi',
		amount: 15.60,
		picture: URI.parse("http://fillmurray.com/200/300")
	},
	{
		name: 'Food',
		amount: 5.60,
		picture: URI.parse("http://fillmurray.com/200/350")
	},
	{
		name: 'Hotel',
		amount: 60.50,
		picture: URI.parse("http://fillmurray.com/250/300")
	},
	{
		name: 'Train',
		amount: 30.68,
		picture: URI.parse("http://fillmurray.com/230/300")
	},
	{
		name: 'Car Sharing',
		amount: 6.50,
		picture: URI.parse("http://fillmurray.com/200/400")
	},
])

puts 'Done with Billing information'

puts 'Seeding Travel expenses information'
TravelExpense.create([
	{
		start: 5.days.ago,
		end: 3.days.ago,
		price: 150.0,
		location: 'Germany'
	},
	{
		start: 5.months.ago,
		end: 4.months.ago,
		price: 5500.0,
		location: 'Sweden'
	},
	{
		start: 10.days.ago,
		end: 9.days.ago,
		price: 150.0,
		location: 'Germany'
	},
	{
		start: 10.days.ago,
		end: 2.days.ago,
		price: 158.0,
		location: 'France'
	},
	{
		start: 50.days.ago,
		end: 30.days.ago,
		price: 800.0,
		location: 'Germany'
	},
])
puts 'Done with Travel expenses information'
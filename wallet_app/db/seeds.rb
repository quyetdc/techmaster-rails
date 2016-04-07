# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories_data = [
    {
        name: "Laptop"
    },
    {
        name: "Mobilephone"
    },
    {
        name: "Work"
    }
]

categories_data.each do |c|
  Category.create(name: c[:name])
end


incomes_data = [
    {
        amount: 2000,
        issued_at: "01-04-2016",
    },
    {
        amount: 1000,
        issued_at: "01-04-2016",
    }
]

incomes_data.each do |i|
  Income.create(amount: i[:amount], issued_at: i[:issued_at])
end


costs_data = [
    {
        amount: 250,
        issued_at: "2016-02-23",
    },
    {
        amount: 1500,
        issued_at: "2016-03-23",
    }
]

costs_data.each do |c|
  Cost.create(amount: c[:amount], issued_at: c[:issued_at])
end
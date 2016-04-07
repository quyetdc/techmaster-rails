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
    },
    {
        name: "Travel"
    },
    {
        name: "Tax"
    },
    {
        name: "Food"
    },
    {
        name: "Study"
    },
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
        issued_at: "01-12-2015",
    },
    {
        amount: 1000,
        issued_at: "01-03-2016",
    },
    {
        amount: 2000,
        issued_at: "10-11-2015",
    },
    {
        amount: 1000,
        issued_at: "23-02-2016",
    },
    {
        amount: 1000,
        issued_at: "01-01-2016",
    },
]

incomes_data.each do |i|
  Income.create(amount: i[:amount], issued_at: i[:issued_at])
end


costs_data = [
    {
        amount: 1000,
        issued_at: "23-02-2016",
    },
    {
        amount: 1500,
        issued_at: "2016-03-23",
    },
    {
        amount: 2500,
        issued_at: "14-02-2016",
    },
    {
        amount: 250,
        issued_at: "23-01-2016",
    }
]

costs_data.each do |c|
  Cost.create(amount: c[:amount], issued_at: c[:issued_at])
end


Income.first.categories << Category.third
Income.first.categories << Category.first
Income.second.categories << Category.second
Income.second.categories << Category.first
Income.third.categories << Category.third
Income.third.categories << Category.second
Income.third.categories << Category.first
Income.fourth.categories << Category.third
Income.fifth.categories << Category.second
Income.last.categories << Category.first
Income.last.categories << Category.second
Income.last.categories << Category.third
Income.last.categories << Category.last


Cost.first.categories << Category.last
Cost.second.categories << Category.fourth
Cost.third.categories << Category.second
Cost.fourth.categories << Category.first
Cost.first.categories << Category.fifth
Cost.second.categories << Category.fifth
Cost.third.categories << Category.fifth
Cost.fourth.categories << Category.fifth

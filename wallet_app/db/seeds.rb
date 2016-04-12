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

date = ["23-02-2016", "01-01-2016", "08-03-2016", "01-04-2016", "08-12-2015", "09-11-2015", "20-10-2015", "05-09-2015", "30-08-2015", "30-07-2015", "18-06-2015", "06-05-2015"]

100.times do
    Income.create(amount: rand(100..5000),
                  issued_at: date.sample)
    Cost.create(amount: rand(100..5000),
                  issued_at: date.sample)
end

Income.all.each do |income|
  offset = rand(Category.count)
  income.categories << Category.offset(offset).first
end

Cost.all.each do |cost|
    offset = rand(Category.count)
    cost.categories << Category.offset(offset).first
end

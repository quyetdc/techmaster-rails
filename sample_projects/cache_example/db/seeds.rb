# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

finished_tasks = ['Profiling App', 'Mailer', 'Deployment']

unfinished_tasks = ['Cache', 'Delayed job', 'Resque']

finished_tasks.each do |t|
  Task.create(name: t, is_completed: true)
end

unfinished_tasks.each do |t|
  Task.create(name: t, is_completed: false)
end
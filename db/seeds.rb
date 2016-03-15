# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


## BOOK

#  id         :integer          not null, primary key
#  name       :string
#  about      :text
#  publisher  :string
#  year       :integer
#  isbn       :integer
#  price      :float
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

books_info = [
    {
        name: "Supercraft",
        about: "52 creative craft and sewing projects easy enough to complete in just one weekend, designed to keep crafters busy all year long. Supercraft is packed with DIY craft and sewing projects that use everyday materials and innovative techniques so you can upcycle your way to creating something new and stylish. Embroider a notebook, print fabric with starfruit, make a hanging garden for your bathroom, and much, much more. Each of the 52 projects in this book include everything you need to know, with step-by-step photographs and detailed instructions, and are simple enough to finish in a weekend. Craft your way through spring, summer, winter, and fall with Supercraft.",
        image: 'http://ecx.images-amazon.com/images/I/61L53oUO44L._SX416_BO1,204,203,200_.jpg'
    },
    {
        name: 'Furniture Makes the Room: Create Special Pieces to Style a Home You Love',
        about: "Knack Studio founder Barb Blair is famous for her 'knack' with furniture: spotting classic pieces and transforming them into modern showstoppers. In this inspiring book, Blair goes beyond the nuts and bolts of furniture refinishing to show how to style rooms with each customized piece. For instance, she transforms a well-worn coffee table with a painted ombré design, and then reveals how to incorporate it into a bright and sunny den, a cozy reading nook, and a cheerful bedroom. With instructions for 15 before-and-after furniture projects—dressers, tables, beds, armoire, and more—in Blair's signature bold style, a 'toolbox' section detailing her favorite techniques and materials, and photos of dozens of inspiring interiors, Furniture Makes the Room unlocks the secrets to decorating livable rooms around statement pieces.",
        image: 'http://ecx.images-amazon.com/images/I/51HHtpdmzYL._SX340_BO1,204,203,200_.jpg'
    }
]

books_info.each do |book|
  Book.create(name: book[:name], about: book[:about], image: book[:image])
end

categories = ["craft", "furniture"]
categories.each do |c|
  category = Category.create(name: c)

  offset = rand(Book.count)
  random_book = Book.offset(offset).first
  category.books << random_book
end


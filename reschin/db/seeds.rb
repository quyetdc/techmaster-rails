# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

banners = [
    {
        name: 'image1',
        image: 'http://tea-3.lozi.vn/v1/statics/original/banner_web_75'
    },
    {
        name: 'image2',
        image: 'http://tea-3.lozi.vn/v1/statics/original/banner_web_71'
    },
    {
        name: 'image3',
        image: 'http://tea-3.lozi.vn/v1/statics/original/banner_web_14'
    }
]

banners.each do |banner|
  Banner.create(image: banner[:image])
end
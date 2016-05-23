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
    },
    {
        name: 'image4',
        image: 'http://tea-3.lozi.vn/v1/statics/original/banner_web_75'
    },
    {
        name: 'image5',
        image: 'http://tea-3.lozi.vn/v1/statics/original/banner_web_71'
    },
    {
        name: 'image6',
        image: 'http://tea-3.lozi.vn/v1/statics/original/banner_web_14'
    }
]

banners.each do |banner|
  Banner.create(image: banner[:image], name: banner[:name])
end


categories = [
    {
        name: 'Lẩu & Nướng'
    },
    {
        name: 'Cơm Văn Phòng'
    },
    {
        name: 'Vỉa Hè'
    }
]

categories.each do |cat|
  Category.create(name: cat[:name])
end

locations = ['Techmaster - Phòng 2304, Star City, Lê Văn Lương']

locations.each do |loc|
  Location.create(name: loc)
end

restaurant1s = [
    {
        name: 'Lẩu quán',
    },
    {
        name: 'Nướng quán'
    }
]

restaurant1s.each do |res|
  res = Restaurant.create(name: res[:name], location: Location.first)
  res.categories << Category.first
end


restaurant2s = [
    {
        name: 'Cơm bình dân',
    },
    {
        name: 'Phở bò Nam Định'
    }
]

restaurant2s.each do |res|
  res = Restaurant.create(name: res[:name], location: Location.first)
  res.categories << Category.second
end


restaurant3s = [
    {
        name: 'Trà đá',
    },
    {
        name: 'Cafe dạo'
    }
]

restaurant3s.each do |res|
  res = Restaurant.create(name: res[:name], location: Location.first)
  res.categories << Category.first
  res.categories << Category.last
end



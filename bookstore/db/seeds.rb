## BOOK

# Table name: books
#
#  id             :integer          not null, primary key
#  name           :string
#  about          :text
#  publisher      :string
#  year           :integer
#  isbn           :integer
#  price          :float
#  image          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  is_new         :integer          default(0)
#  is_best_seller :integer          default(0)

# Table name: authors
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  profile    :string
#  birthday   :date
#  phone      :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#

# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

# SOURCE: TIKI
### Author 1: Huong Giang
author_param1 = [
  {
      first_name: 'Giang',
      last_name: 'Hương',
      profile: '',
      image: 'http://hopamviet.com/assets/images/composers/luu-huong-giang3.jpg',
  }
]

author1 = Author.create(author_param1)

category1 = Category.create(name: 'Sách Tiếng Việt')

books_params1 = [
    {
        name: 'Bé Tô Màu (Tập 5) - Mickey',
        image: 'https://vcdn.tikicdn.com/cache/w232/media/catalog/product/i/m/img226_16.jpg',
        price: 5800,
        is_new: rand(0..1),
        is_best_seller: rand(0..1),
        about: 'Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum cotidieque. Est cu nibh clita. Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.'
    },
    {
        name: 'Bé Tô Màu (Tập 11) - Tom Và Jerry',
        image: 'https://vcdn.tikicdn.com/cache/w232/media/catalog/product/i/m/img228_20.jpg',
        price: 5800,
        is_new: rand(0..1),
        is_best_seller: rand(0..1),
        about: 'Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum cotidieque. Est cu nibh clita. Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.'
    },
    {
        name: 'Bé Tô Màu (Tập 14) - Bambi',
        image: 'https://vcdn.tikicdn.com/cache/w232/media/catalog/product/i/m/img229_15.jpg',
        price: 5800,
        is_new: rand(0..1),
        is_best_seller: rand(0..1),
        about: 'Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum cotidieque. Est cu nibh clita. Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.'
    }
]

books_params1.each do |book_params|
  book = Book.create(book_params)
  book.categories << category1
  book.authors << author1
end



### Author 2: Dai Loi + Huong Giang

author_param2 = [
    {
        first_name: 'Thu',
        last_name: 'Thảo',
        profile: '',
        image: 'http://a8.vietbao.vn/images/vn888/hot/v2013/best_9822c0e23d-5-top-5-gai-ngoan-cua-showbiz-viet.jpeg',
    }
]

author2 = Author.create(author_param2)

books_param2 = [
    {
        name: 'Tuyển Tập Đề Thi Violympic Tiếng Anh Lớp 6',
        image: 'https://vcdn.tikicdn.com/cache/w232/media/catalog/product/i/m/img151_11.jpg',
        price: 57000,
        is_new: rand(0..1),
        is_best_seller: rand(0..1),
        about: 'Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum cotidieque. Est cu nibh clita. Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.'
    }
]

books_param2.each do |book_params|
  book = Book.create(book_params)
  book.categories << category1
  book.authors << author1
  book.authors << author2
end


### Author 3: The Windy

author_param3 = [
    {
        first_name: 'The',
        last_name: 'Windy',
        profile: '',
        image: 'http://a8.vietbao.vn/images/vn888/hot/v2013/best_eb03b20779-26-top-5-gai-ngoan-cua-showbiz-viet.jpeg',
    }
]

author3 = Author.create(author_param3)

books_param3 = [
    {
        name: 'Bộ Đề Kiểm Tra Tiếng Anh Lớp 7',
        image: 'https://vcdn.tikicdn.com/cache/w232/media/catalog/product/t/i/tieng-anh-7_2.jpg',
        price: 59000,
        is_new: rand(0..1),
        is_best_seller: rand(0..1),
        about: 'Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum cotidieque. Est cu nibh clita. Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.'
    },
    {
        name: 'Tổng Hợp Ngữ Pháp Và Bài Tập Tiếng Anh Lớp 9',
        image: 'https://vcdn.tikicdn.com/cache/w232/media/catalog/product/i/m/img348_1_7.jpg',
        price: 55000,
        is_new: rand(0..1),
        is_best_seller: rand(0..1),
        about: 'Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum cotidieque. Est cu nibh clita. Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.'
    },
    {
        name: 'Trọng Tâm Kiến Thức Tiếng Anh Lớp 3 - Tập 1',
        image: 'https://vcdn.tikicdn.com/cache/w232/media/catalog/product/i/m/img026_1_5.jpg',
        price: 38000,
        is_new: rand(0..1),
        is_best_seller: rand(0..1),
        about: 'Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum cotidieque. Est cu nibh clita. Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.'
    }
]

books_param3.each do |book_params|
  book = Book.create(book_params)
  book.categories << category1
  book.authors << author3
end


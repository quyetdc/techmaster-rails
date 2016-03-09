json.array!(@books) do |book|
  json.extract! book, :id, :name, :about, :publisher, :year, :isbn, :price, :image
  json.url book_url(book, format: :json)
end

json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :name, :description
  json.url gallery_url(gallery, format: :json)
end

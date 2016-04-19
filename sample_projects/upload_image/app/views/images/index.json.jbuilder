json.array!(@images) do |image|
  json.extract! image, :id, :file, :name, :gallery_id
  json.url image_url(image, format: :json)
end

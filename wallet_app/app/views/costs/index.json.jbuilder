json.array!(@costs) do |cost|
  json.extract! cost, :id, :amount
  json.url cost_url(cost, format: :json)
end

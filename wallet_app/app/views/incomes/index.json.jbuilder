json.array!(@incomes) do |income|
  json.extract! income, :id, :amount
  json.url income_url(income, format: :json)
end

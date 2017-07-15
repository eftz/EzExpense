json.extract! travel_expense, :id, :start, :end, :price, :location, :created_at, :updated_at
json.url travel_expense_url(travel_expense, format: :json)

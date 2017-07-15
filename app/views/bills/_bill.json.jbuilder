json.extract! bill, :id, :amount, :name, :created_at, :updated_at
json.url bill_url(bill, format: :json)

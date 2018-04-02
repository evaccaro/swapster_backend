json.extract! event, :id, :title, :date, :occasion, :price_limit, :created_at, :updated_at
json.url event_url(event, format: :json)

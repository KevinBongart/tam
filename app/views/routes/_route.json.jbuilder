json.extract! route, :id, :tam_id, :short_name, :long_name, :route_type, :created_at, :updated_at
json.url route_url(route, format: :json)

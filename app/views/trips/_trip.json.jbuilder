json.extract! trip, :id, :tam_id, :route_id, :service_id, :trip_headsign, :direction_id, :block_id, :wheelchair_accessible, :bikes_allowed, :created_at, :updated_at
json.url trip_url(trip, format: :json)

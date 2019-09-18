json.extract! transfer, :id, :from_stop_id, :to_stop_id, :transfer_type, :min_transfer_time, :created_at, :updated_at
json.url transfer_url(transfer, format: :json)

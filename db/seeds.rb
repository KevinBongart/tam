require 'csv'

CSV.read("db/seeds/stops.csv", headers: true).each do |row|
  Stop.create! do |stop|
    stop.tam_id = row['stop_id']
    stop.code = row['stop_code']
    stop.name = row['stop_name']
    stop.lat = row['stop_lat']
    stop.long = row['stop_long']
    stop.location_type = row['location_type']

    if parent_stop = Stop.find_by(tam_id: row['parent_station'])
      stop.parent_stop = parent_stop
    end
  end
end

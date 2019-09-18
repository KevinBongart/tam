require 'csv'

puts 'Importing stops...'
CSV.read('db/seeds/stops.csv', headers: true).each do |row|
  Stop.where(tam_id: row['stop_id']).first_or_create! do |stop|
    puts "Creating Stop##{stop.tam_id}"

    stop.code   = row['stop_code']
    stop.name   = row['stop_name']
    stop.lat    = row['stop_lat']
    stop.long   = row['stop_lon']
    stop.location_type = row['location_type']

    if row['parent_station'] && parent_stop = Stop.find_by(tam_id: row['parent_station'])
      stop.parent_stop = parent_stop
    end
  end
end

puts 'Importing transfers...'
CSV.read('db/seeds/transfers.csv', headers: true).each do |row|
  from_stop = Stop.find_by!(tam_id: row['from_stop_id'])
  to_stop   = Stop.find_by!(tam_id: row['to_stop_id'])

  Transfer.where(from_stop: from_stop, to_stop: to_stop).first_or_create! do |transfer|
    puts "Creating Transfer from Stop##{from_stop.tam_id} to Stop##{to_stop.tam_id}"

    transfer.transfer_type = row['transfer_type']
    transfer.min_transfer_time = row['min_transfer_time']
  end
end

puts 'Importing routes...'
CSV.read('db/seeds/routes.csv', headers: true).each do |row|
  Route.where(tam_id: row['route_id']).first_or_create! do |route|
    puts "Creating Route##{route.tam_id}"

    route.short_name = row['route_short_name']
    route.long_name  = row['route_long_name']
    route.route_type = row['route_type']
  end
end

puts 'Importing trips...'
CSV.read('db/seeds/trips.csv', headers: true).each do |row|
  Trip.where(tam_id: row['trip_id']).first_or_create! do |trip|
    puts "Creating Trip##{trip.tam_id}"

    trip.route = Route.find_by!(tam_id: row['route_id'])
    trip.service_id = row['service_id']
    trip.trip_headsign = row['trip_headsign']
    trip.direction_id = row['direction_id']
    trip.block_id = row['block_id']
    trip.wheelchair_accessible = row['wheelchair_accessible']
    trip.bikes_allowed = row['bikes_allowed']
  end
end

require 'csv'

CSV.read("db/seeds/stops.csv", headers: true).each do |row|
  Stop.create! do |stop|
    stop.tam_id = row['stop_id']
    stop.code   = row['stop_code']
    stop.name   = row['stop_name']
    stop.lat    = row['stop_lat']
    stop.long   = row['stop_lon']
    stop.location_type = row['location_type']

    if row['parent_station'] && parent_stop = Stop.find_by!(tam_id: row['parent_station'])
      stop.parent_stop = parent_stop
    end
  end
end

CSV.read("db/seeds/transfers.csv", headers: true).each do |row|
  Transfer.create! do |transfer|
    from_stop = Stop.find_by!(tam_id: row['from_stop_id'])
    to_stop   = Stop.find_by!(tam_id: row['to_stop_id'])

    transfer.from_stop = from_stop
    transfer.to_stop = to_stop
    transfer.transfer_type = row['transfer_type']
    transfer.min_transfer_time = row['min_transfer_time']
  end
end

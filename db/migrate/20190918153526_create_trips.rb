class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :tam_id
      t.string :route_id
      t.string :service_id
      t.string :trip_headsign
      t.integer :direction_id
      t.string :block_id
      t.integer :wheelchair_accessible
      t.integer :bikes_allowed

      t.timestamps
    end
  end
end

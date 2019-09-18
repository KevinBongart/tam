class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.string :tam_id
      t.string :short_name
      t.string :long_name
      t.integer :route_type

      t.timestamps
    end
  end
end

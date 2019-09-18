class CreateStops < ActiveRecord::Migration[6.0]
  def change
    create_table :stops do |t|
      t.string :tam_id
      t.string :code
      t.string :name
      t.float :lat
      t.float :long
      t.integer :location_type
      t.string :parent_stop_id

      t.timestamps
    end
  end
end

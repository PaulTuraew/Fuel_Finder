class CreateStationCounts < ActiveRecord::Migration
  def change
    create_table :station_counts do |t|
      t.references :state, index: true
      t.references :fuel_type, index: true
      t.integer :count

      t.timestamps
    end
  end
end

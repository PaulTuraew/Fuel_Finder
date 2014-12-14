class AddPercentToStationCount < ActiveRecord::Migration
  def change
    add_column :station_counts, :percent, :string
  end
end

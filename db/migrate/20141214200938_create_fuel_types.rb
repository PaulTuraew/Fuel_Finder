class CreateFuelTypes < ActiveRecord::Migration
  def change
    create_table :fuel_types do |t|
      t.string :abbr
      t.string :desc

      t.timestamps
    end
  end
end

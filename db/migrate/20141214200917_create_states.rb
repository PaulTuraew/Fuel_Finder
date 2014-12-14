class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :abbr
      t.string :desc

      t.timestamps
    end
  end
end

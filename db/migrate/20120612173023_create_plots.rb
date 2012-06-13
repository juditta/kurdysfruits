class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :nr_dz_ew
      t.integer :season_id
      t.integer :farm_id
      t.string :aera
      t.integer :lease_id
      t.integer :plant_id

      t.timestamps
    end
  end
end

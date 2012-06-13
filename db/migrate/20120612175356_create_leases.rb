class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.string :name
      t.integer :phone
      t.date :lease_time
      t.date :lease_panding
      t.float :cost_year

      t.timestamps
    end
  end
end

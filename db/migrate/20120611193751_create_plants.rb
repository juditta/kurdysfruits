class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.integer :plantstype_id
      t.string :strain
      t.string :picture

      t.timestamps
    end
    add_foreign_key :plants, :plantstypes
  end
end

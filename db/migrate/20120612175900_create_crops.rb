class CreateCrops < ActiveRecord::Migration
  def change
    create_table :crops do |t|
      t.date :date
      t.integer :plot_id
      t.float :quantity

      t.timestamps
    end
  end
end

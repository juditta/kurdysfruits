class CreatePlantstypes < ActiveRecord::Migration
  def change
    create_table :plantstypes do |t|
      t.string :plantstype

      t.timestamps
    end
  end
end

class RemoveTypeIdFromPlant < ActiveRecord::Migration
  def up
    remove_column :plants, :plantstype_id
  end

  def down
    add_column :plants, :plantstype_id, :integer
  end
end

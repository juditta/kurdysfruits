class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :farm_name
      t.string :name
      t.integer :regon
      t.integer :nip
      t.string :street
      t.integer :post_code
      t.string :city
      t.integer :phone

      t.timestamps
    end
  end
end

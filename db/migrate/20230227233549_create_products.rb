class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :year
      t.string :brand
      t.string :operator
      t.string :model
      t.string :description
      t.string :status
      t.float :price
      t.boolean :available, default: true

      t.timestamps
    end
  end
end

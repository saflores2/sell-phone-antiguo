class CreateRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :registers do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :product_id, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end

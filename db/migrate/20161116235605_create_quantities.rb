class CreateQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :quantities do |t|
      t.string :quantity
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end

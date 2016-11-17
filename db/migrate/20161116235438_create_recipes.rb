class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :instructions
      t.integer :user_id
      t.integer :category_id
      t.integer :prep_time
      t.integer :difficulty_level

      t.timestamps
    end
  end
end

class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :instructions
      t.integer :prep_time
      t.integer :difficulty_level
      t.references :user
      t.references :category

      t.timestamps
    end
  end
end

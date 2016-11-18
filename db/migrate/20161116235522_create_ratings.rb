class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end

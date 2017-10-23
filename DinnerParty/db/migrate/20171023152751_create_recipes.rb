class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :ingredients
      t.string :instructions
      t.integer :user_id

      t.timestamps
    end
  end
end

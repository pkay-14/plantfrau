class AddUniqueIndexToInstructions < ActiveRecord::Migration[7.0]
  def change
    add_index :instructions, [:plants_id, :category], unique: true
  end
end

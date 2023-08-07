class CreateInstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :instructions do |t|
      t.string :category
      t.text :description
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end

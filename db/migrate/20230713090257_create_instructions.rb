class CreateInstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :instructions, id: :uuid do |t|
      t.string :category
      t.text :description
      t.references :plant, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end

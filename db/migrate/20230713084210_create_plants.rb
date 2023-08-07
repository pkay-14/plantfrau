class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants, id: :uuid do |t|
      t.string :name
      t.string :botanical_name
      t.string :family
      t.text :description

      t.timestamps
    end
  end
end

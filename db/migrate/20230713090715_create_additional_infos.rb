class CreateAdditionalInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :additional_infos do |t|
      t.string :category
      t.text :description
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end

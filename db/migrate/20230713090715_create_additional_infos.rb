class CreateAdditionalInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :additional_infos, id: :uuid do |t|
      t.string :category
      t.text :description
      t.references :plant, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end

class AddUniqueIndexToAdditionalInfos < ActiveRecord::Migration[7.0]
  def change
    add_index :additional_infos, [:plants_id, :category], unique: true
  end
end

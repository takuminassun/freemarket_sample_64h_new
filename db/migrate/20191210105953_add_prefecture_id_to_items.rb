class AddPrefectureIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :prefecture_id, :integer
    add_column :items, :text, :text
  end
end

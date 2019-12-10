class RemoveTextFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :text, :text
  end
end

class AddSnsNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sns_name, :string
  end
end

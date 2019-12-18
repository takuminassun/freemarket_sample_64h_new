class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :nickname, null: false
      t.string :avatar
      t.text :comment
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end



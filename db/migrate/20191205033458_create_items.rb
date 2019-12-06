class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name,            null: false
      t.integer :user_id,         null: false, foreign_key: true
      t.integer :category_id,     null: false, foreign_key: true
      t.integer :brand_id,        null: false, foreign_key: true
      t.integer :price,           null: false
      t.integer :status,          null: false
      t.text    :description,     null: false
      t.integer :shipping_burden, null: false
      t.integer :shipping_method, null: false
      t.integer :shipping_date,   null: false
      t.integer :size
      t.timestamps
    end
    add_index :items, :name,  unique: true
  end
end

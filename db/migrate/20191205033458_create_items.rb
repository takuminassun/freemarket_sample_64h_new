class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name,            null: false
      t.integer :user_id,         null: false, foreign_key: true
      t.integer :category_id,     null: false, foreign_key: true
      t.integer :brand_id,        foreign_key: true
      t.integer :price,           null: false
      t.string :status,          null: false
      t.text    :description,     null: false
      t.string :shipping_burden, null: false
      t.string :shipping_method
      t.string :shipping_date,   null: false
      t.integer :size
      t.timestamps
    end  
  end
end

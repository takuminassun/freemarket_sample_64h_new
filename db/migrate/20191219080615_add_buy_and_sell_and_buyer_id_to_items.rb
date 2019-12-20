class AddBuyAndSellAndBuyerIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :buyer_id, :integer
    add_column :items, :buy_and_sell, :integer
  end
end

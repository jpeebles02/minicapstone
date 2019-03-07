class RemoveProductAvalibility < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :product_stock_avalibility, :string
  end
end

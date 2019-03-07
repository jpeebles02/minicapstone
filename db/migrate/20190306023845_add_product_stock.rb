class AddProductStock < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :product_stock_avalibility, :string
  end
end

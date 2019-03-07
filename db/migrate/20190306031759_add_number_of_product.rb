class AddNumberOfProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :number_of_products, :integer
  end
end

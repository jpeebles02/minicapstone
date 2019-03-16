class RemoveIntergerColumnFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :integer, :string
    add_column :products, :rating, :integer
  end
end

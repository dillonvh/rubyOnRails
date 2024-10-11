class AddQuantityToAssets < ActiveRecord::Migration[7.2]
  def change
    add_column :assets, :quantity, :integer, default: 0
  end
end

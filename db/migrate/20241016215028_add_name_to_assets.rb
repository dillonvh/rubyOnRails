class AddNameToAssets < ActiveRecord::Migration[7.2]
  def change
    add_column :assets, :name, :string
  end
end

class RemoveUserFromAssets < ActiveRecord::Migration[7.2]
  def change
    remove_reference :assets, :user, null: false, foreign_key: true
  end
end

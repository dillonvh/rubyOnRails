class RemoveUserFromPortfolio < ActiveRecord::Migration[7.2]
  def change
    remove_reference :portfolios, :user, null: false, foreign_key: true
  end
end

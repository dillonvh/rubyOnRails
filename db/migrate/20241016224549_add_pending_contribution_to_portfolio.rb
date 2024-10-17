class AddPendingContributionToPortfolio < ActiveRecord::Migration[7.2]
  def change
    add_column :portfolios, :pending_contribution, :decimal, default: 0
  end
end

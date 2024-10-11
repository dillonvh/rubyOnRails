class CreateAssets < ActiveRecord::Migration[7.2]
  def change
    create_table :assets do |t|
      t.string :ticker
      t.decimal :price
      t.decimal :current_weight
      t.decimal :desired_weight
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end

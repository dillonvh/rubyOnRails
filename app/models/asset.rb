class Asset < ApplicationRecord
  validates :ticker, presence: true, length: {minimum: 3, maximum: 10}
  validates :desired_weight, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 100}
  belongs_to :portfolio
end

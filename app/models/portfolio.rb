class Portfolio < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 50}
  has_many :assets, dependent: :destroy
end

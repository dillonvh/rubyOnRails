class Portfolio < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 50}
  belongs_to :user
  has_many :assets, dependent: :destroy
end

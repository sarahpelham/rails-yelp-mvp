class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  has_many :reviews, dependent: :destroy
end

class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy
  # validates :name, :address, :phone_number, :category, presence: true
  # validates :name, :address, :category, allow_blank: false
  # validates :category, inclusion: { in: CATEGORIES }
  validates :name, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :phone_number, presence: true
  validates :category, presence: true, allow_blank: false, inclusion: { in: CATEGORIES }
end

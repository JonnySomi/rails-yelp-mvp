class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES, message: 'Choose chinese, italian, japanese, french or belgian' }
end

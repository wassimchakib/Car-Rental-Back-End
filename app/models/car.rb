class Car < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, message: 'Name must have 3 or more characters' }
  validates :year, presence: true
  validates :color, allow_blank: true
  validates :description,
            allow_blank: true,
            length: { minimum: 1000, message: 'Description must have less than 1000 characters' }
  validates :price,
            presence: true,
            numericality: { greater_than: 0, message: 'Price must be greater than 0' }

  has_many :images
  belongs_to :user
end

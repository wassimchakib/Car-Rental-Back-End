class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :city, presence: true, length: { minimum: 3, message: 'City must have 3 or more characters' }
  validates :starting_date, :ending_date, presence: true
end

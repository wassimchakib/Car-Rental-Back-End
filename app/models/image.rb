class Image < ApplicationRecord
  validates :url, presence: true, allow_blank: false

  belongs_to :car
end

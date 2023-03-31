class Image < ApplicationRecord
  validates :url, allow_blank: true

  belongs_to :car
end

class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { message: 'Must be unique' },
                   length: { in: 3..250, message: 'Must be a string of at least 3 characters' }
end

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\S+@\S+\.\S+/,
              message: 'does not conform into a valid email form'
            }
  validates :password, presence: true
end

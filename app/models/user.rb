class User < ApplicationRecord
  has_many :microposts

  # Validator for the user's name
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }

  # Validator for the user's email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { minimum: 10, maximum: 50 }, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
end

class User < ApplicationRecord
  has_many :menu_categories

  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
  validates :email, presence: true
end

class User < ActiveRecord::Base
  validates :full_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true

  has_secure_password validations: false
end
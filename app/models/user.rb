class User < ApplicationRecord

  has_many :commission_logs
  has_many :dogs

  validates :handle, :last_name, :first_name, :email, :password, presence: true
  has_secure_password
  validates :email, presence: true, uniqueness: true

end
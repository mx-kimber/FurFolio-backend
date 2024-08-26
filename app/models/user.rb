class User < ApplicationRecord

  has_many :commission_logs
  has_many :dogs


  validates :handle, :last_name, :first_name, :email, :password, presence: true
  validates :email, uniqueness: true

end
class Dog < ApplicationRecord
  
  belongs_to :user, optional: true
  has_many :commission_logs


  validates :name, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
 
end

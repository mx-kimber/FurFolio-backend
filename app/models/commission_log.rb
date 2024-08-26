class CommissionLog < ApplicationRecord

  belongs_to :dog, optional: true
  belongs_to :user, optional: true


  validates :date, :percentage, :price, :calculated_commission, presence: true
  validates :percentage, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :calculated_commission, numericality: true
end

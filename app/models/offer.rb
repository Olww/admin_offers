class Offer < ApplicationRecord
  validates :payout, :numericality => { :greater_than_or_equal_to => 0 }
end

class Book < ApplicationRecord
  belongs_to :author

  has_many :sales
  has_many :users, through: :sales

  def stripe_amount
    (price * 100).to_i
  end
end

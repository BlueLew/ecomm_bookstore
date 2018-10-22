class Book < ApplicationRecord
  belongs_to :author

  has_many :sales
  has_many :users, through: :sales

  has_one_attached :image

  def stripe_amount
    (price * 100).to_i
  end
end

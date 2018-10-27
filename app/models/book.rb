class Book < ApplicationRecord
  validates :title, presence: true

  has_many :sales
  has_many :users, through: :sales

  belongs_to :author, class_name: "User", foreign_key: :author_id, required: false

  has_one_attached :image

  after_create :make_calculations

  def stripe_amount
    (price * 100).to_i
  end

private

  def make_calculations
    MakeCalculationsJob.perform_later(book)
  end
end

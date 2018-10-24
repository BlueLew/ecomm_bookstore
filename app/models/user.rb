class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sales
  has_many :books, through: :sales

  has_many :books_authored, class_name: "Book", foreign_key: :author_id

  has_one_attached :avatar
end

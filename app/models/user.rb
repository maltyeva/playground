class User < ApplicationRecord
  has_merit

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :comments, dependent: :destroy

  has_many :posts
  has_many :users_posts
  has_many :liked_posts, through: :users_posts, source: :post

  belongs_to :company
  accepts_nested_attributes_for :company
end

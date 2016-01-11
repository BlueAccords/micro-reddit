class User < ActiveRecord::Base
  validates :username, presence: true, length: {in: 3..20}, uniqueness: true
  validates :password, presence: true, length: {in: 8..100}
  validates :email, presence: true, length: {in: 3..50}, uniqueness: true
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end

class User < ActiveRecord::Base
	validates :name, presence: true, length: { within: 3..24 }, uniqueness: true
	validates :email, presence: true, uniqueness: true
	has_many :posts
	has_many :comments
end

class Post < ActiveRecord::Base
	validates :title, presence: true, length: { within: 3..120 }
	validates :body, length: { maximum: 500 }
	validates :link, length: { maximum: 120 }
	belongs_to :user
	has_many :comments
	validates :user, presence: true
end

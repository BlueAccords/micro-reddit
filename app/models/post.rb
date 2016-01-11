class Post < ActiveRecord::Base
	validates :title, presence: true, length: {in: 3..100}
	validates :body, presence: true
	belongs_to :user
end

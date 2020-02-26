class Article < ApplicationRecord
	#1:N설정
	has_many :replies
end

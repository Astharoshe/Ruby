class Reply < ApplicationRecord
    # 1:N설정 
	# 게시글과 1설정
	belongs_to :article
end

class Reply < ApplicationRecord
    # 1:N설정 
	belongs_to :article
end

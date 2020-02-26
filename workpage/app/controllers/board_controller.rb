class BoardController < ApplicationController
	def read
		@posts = Boardpost.all
		
		
	end
	
	def write
		
	end
	
	def create
		post = Boardpost.new
		post.title = params[:title]
		post.content = params[:content]
		post.save
		
		redirect_to '/read'
	end
	
	def modify
		@post = Boardpost.find(params[:post_id])
	end
	
	def update
		post = Boardpost.find(params[:post_id])
		post.title = params[:title]
		post.content = params[:content]
		post.save
		
		redirect_to '/read'
	end
		
	def delete
		Boardpost.destroy(params[:post_id])
		# rails 5 버전 이하에서만 동작
		# redirect_to :back
		
		# 5.1버전 이후 변경
		redirect_back fallback_location: '/read'
	end
end

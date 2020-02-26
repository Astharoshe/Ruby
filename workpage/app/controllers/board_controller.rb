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
end

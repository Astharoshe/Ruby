class PostexController < ApplicationController
  def index
	  @Posts = Article.all
  end

  def create
	  @post = Article.new
	  @post.title = params[:title]
	  @post.author = params[:author]
	  @post.content = params[:content]
	  @post.save
	  
	  redirect_to '/postex/index'
  end

  def update
	  @post = Article.find(params[:id])
	  @post.title = params[:title]
	  @post.author = params[:author]
	  @post.content = params[:content]
	  @post.save
	  
	  redirect_to '/postex/index'
  end

  def delete
	  Article.destroy(params[:id])
	  redirect_to '/postex/index'
  end

  def create_form
  end

  def update_form
	  @post = Article.find(params[:id])
  end
	
  def reply_create
  	  @post = Reply.new
	  @post.article_id = params[:article_id]
	  @post.content = params[:content]
	  @post.save
	  
	  redirect_to '/postex/index'
  end
	
  def reply_update
	@post = Reply.find(params[:reply_id])
	@post.content = params[:content]
	@post.save
	  
	redirect_to '/postex/index'
  end
	
  def reply_update_form
	@post = Reply.find(params[:reply_id])
  end	
	
  def reply_delete
	 Reply.destroy(params[:reply_id])
	  
	 redirect_to '/postex/index'
  end
	
end

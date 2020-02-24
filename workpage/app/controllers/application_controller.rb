class ApplicationController < ActionController::Base
	## Turn off request forgery protection. This is a wrapper for:
	## skip_before_action :verify_authenticity_token
	## See skip_before_action for allowed options.
	skip_forgery_protection 
end

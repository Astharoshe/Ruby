class CalculatorController < ApplicationController
	def add
		
	end
	
	def result
		# params[변수명] 값 가져오기
		# .to_i string -> int type change
		@result = params[:first].to_i + params[:second].to_i
	end
end
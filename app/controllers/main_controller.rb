class MainController < ApplicationController
	def index
		if current_user
		@messages = Message.all.reverse!
		@calls = Call.all.reverse!
		@visitors = Visitor.all.reverse!
		else
			redirect_to "/log_in"
		end
	end

end

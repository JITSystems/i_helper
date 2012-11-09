class MessagesController < ApplicationController
	def index
		@messages = Message.all
	end

	def create
		@message = Message.create!(content: params[:message][:content], user_id: session[:user_id])
	end

	def destroy
		@message = Message.find(params[:id])
		@message.destroy
	end
end

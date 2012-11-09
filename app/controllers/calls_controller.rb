class CallsController < ApplicationController
	def index
		@calls = Call.all
	end

	def create
		@call = Call.create!(fio: params[:call][:fio], time: params[:call][:time], theme: params[:call][:theme], user_id: current_user)
	end

	def show
	end
		
	def edit
		@call = Call.find(params[:id])
	end	

	def update
		@call = Call.find(params[:id])

		respond_to do |format|
      if @call.update_attributes(params[:call])
        format.js  
      else  
       format.js  
      end
  	end
	end	

	def destroy
		@call = Call.find(params[:id])
		@call.destroy
	end
end

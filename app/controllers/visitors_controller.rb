class VisitorsController < ApplicationController
	def index
		@visitors = Visitor.all
	end

	def create
		@visitor = Visitor.create!(fio: params[:visitor][:fio], time: params[:visitor][:time], theme: params[:visitor][:theme], user_id: current_user)
	end

	def show
	end
		
	def edit
		@visitor = Visitor.find(params[:id])
	end	
	def update
		@visitor = Visitor.find(params[:id])
		respond_to do |format|
      if @visitor.update_attributes(params[:visitor])
       format.js  

      else 
       format.js  
      end
  	end
	end	
	
	def destroy
		@visitor = Visitor.find(params[:id])
		@visitor.destroy
	end
end

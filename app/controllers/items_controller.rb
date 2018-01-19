class ItemsController < ApplicationController
	def new
		@item = Item.new
	end
	def create
		# Rails.logger.info("new前----------------------------#{image_id}")
		item = Item.new(item_params)
		item.user_id = current_user.id
		item.save
		redirect_to items_path
	end
	def index
		@items = Item.all

	end
	def show
		@item = Item.find(params[:id])
		@review = Review.new
		
	end
	def destroy
		
	end

	private
		def item_params
			
			params.require(:item).permit(:item_name, :image, :user_id, :comment)
		end
end

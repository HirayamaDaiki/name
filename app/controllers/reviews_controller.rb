class ReviewsController < ApplicationController
	def create
    	item = Item.find(params[:item_id])
    	comment = current_user.reviews.new(review_params)
    	comment.item_id = item.id
    	comment.save
    	redirect_to item_path(item)
	end
	def destroy
		review = Review.find_by(item_id: params[:item_id],user_id:current_user.id)
		item = Item.find(params[:item_id])
		review.destroy
		redirect_to items_path
	end
	private
	def review_params
  		params.require(:review).permit(:user_id,
                      :item_id,
                      :comment)
  		# params.require(:item).permit(:item_name, :image_id, :user_id)
	end
end


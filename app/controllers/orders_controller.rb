class OrdersController < ApplicationController
	def update
    order = Order.find(params[:id])
    # order = Order.find_by(:user_id => current_user.id, :status => "carted")
    
    # code for charging credit card goes here

    order.update(:status => "purchased")

    flash[:success] = "Thanks for shopping!"
    redirect_to "/products"
  end
end

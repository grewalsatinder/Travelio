class ShoppingsController < ApplicationController
  def index
     @shoppings = Shopping.all
  end

  def new
      @shopping = Shopping.new
    end


    def show
      @shopping = Shopping.find(params[:id])
    end

   def create
    @shopping = current_user.shoppings.build(shopping_params)
    if @shopping.save
      flash[:success] = "Shopping created!"
      redirect_to root_url
    else
       @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
     @shopping.destroy
    flash[:success] = "Shopping deleted"
    redirect_to request.referrer || root_url
  end
end
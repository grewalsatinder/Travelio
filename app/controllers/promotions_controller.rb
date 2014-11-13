class PromotionsController < ApplicationController
  def index
     @promotions = Promotion.all
  end

    def new
      @promotion = Promotion.new
    end


    def show
      @promotion = Promotion.find(params[:id])
    end

   def create
    @promotion = current_user.promotions.build(promotion_params)
    if @promotion.save
      flash[:success] = "Promotion created!"
      redirect_to root_url
    else
       @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
     @promotion.destroy
    flash[:success] = "Promotion deleted"
    redirect_to request.referrer || root_url
  end
end

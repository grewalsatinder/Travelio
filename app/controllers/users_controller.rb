
#require_relative '/Users/satinderjitgrewal/GA/travelio/app/controllers/eventbrite-client.rb'

#require 'httpparty'
#require 'eventbrite-client'
class UsersController < ApplicationController
    before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
    before_action :correct_user,   only: [:edit, :update]
    before_action :admin_user,     only: :destroy

 def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events.paginate(page: params[:page])
  end

def new
    #https://www.eventbriteapi.com/v3/event/137322539666357469979?token=X4C4LZD5Z5KGMM247V

  #https://www.eventbrite.com/oauth/authorize?response_type=X4C4LZD5Z5KGMM247V&client_id=137322539666357469979
    @user = User.new
    #get_yelp
# Yelp.client.configure do |config|
#     config.consumer_key = 'ixyt_bjUYeF_yt2econ_VA'
#     config.consumer_secret = 'XWksqiV25p5uJdIPohMoQR5MuCk'
#     config.token = '-fRPXkOtQjFHyDs-fNwMYNXKX6VyUAqN'
#     config.token_secret = 'FdBq7SogS5R7NVyPPGRgCt2pb80'
#  end
 # Yelp.client.search('San Francisco', { term: 'food' })
end



 
 def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
       
    	flash[:success] = "Welcome to Travelio!"
    	   redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

 def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end



  private

    def user_params
      params.require(:user).permit(:name, :room, :email, :password,
                                   :password_confirmation)
    end

    # Before filters

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

     # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

     # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  
 end



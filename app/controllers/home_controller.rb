class HomeController < ApplicationController
  def landing
    @subscriber = Subscriber.new
  end

  def create_subscriber
    @subscriber = Subscriber.new(params[:subscriber].permit(:email))

    if @subscriber.save
      flash[:success] = "You have been subscribed"
      redirect_to root_path
    else
      flash[:error] = "You have entered an invalid email"
      redirect_to root_path
    end
  end
end

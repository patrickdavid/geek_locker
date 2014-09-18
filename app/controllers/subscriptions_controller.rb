class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @subscriptions = Subscription.all
  end

  def create
    @subscription = Subscription.create(subscription_params)
    if @subscription
      redirect_to root_path
    else
      render 'new'
    end
  end


  def new
    @subscription = Subscription.new
  end

  def show
    @subscription = Subscription.find(params[:id])
  end

  def update
    if @subscription.update(subscription_params)
      redirect_to subscription_path(@subscription), notice: "Your subscription has been updated"
    else
      render 'edit'
    end
  end

  def edit
    @subscription = Subscription.find(params[:id])
  end

   def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    flash[:notice] = "The subscription has been deleted."
    redirect_to subscriptions_path
  end


private

  def subscription_params
    params.require(:subscription).permit(:tier, :price)
  end
end

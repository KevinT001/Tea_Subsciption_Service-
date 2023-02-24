class Api::V1::SubscriptionsController < ApplicationController 

  def index
   
    customer = Customer.find(params[:customer_id])
    subscription = customer.subscriptions
    if customer.present? && subscription == nil
      render json: { "data":[] }
    else
      render json: SubscriptionSerializer.new(subscription), status: 200
    end
  end

  def create 
    subscription = Subscription.new(subscription_params)
    if subscription.save! 
      render json: SubscriptionSerializer.new(subscription), status: 200
      # render json: { "Success": "Enjoy your new Tea Subscription"}, status: 200
    else 
      render json: { error: "Error occured, please check if customer information is valid" }, status: 401
    end
  end

  def update

    subscription = Subscription.find(params[:id])
      subscription.update!(subscription_params)
      render json: SubscriptionSerializer.new(subscription), status: 200
      # render json: { "Success": "Subscription to your tea #{subscription.title} updated."}, status: 200
  end 
  
  private
  def subscription_params
    params.permit(:title, :price, :status, :frequency, :customer_id, :tea_id)
  end
end
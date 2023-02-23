class Api::V1::SubscriptionsController < ApplicationController 

  def index
    customer = Customer.find(params[:customer_id])
    subscription = customer.subscriptions
    if customer.present?
      render json: SubscriptionSerializer.new(subscription), status: 200

    # elsif customer.present? && subscription.empty? == true
    #   render json: { message: "No subscription on record" }
    else
      render json: { error: "No customer exists" }, status: 401 
    end
  end

  def create 
    subscription = Subscription.new(subscription_params)
    if subscription.save! 
      render json: SubscriptionSerializer.new(subscription), status: 200
    else 
      render json: { error: "Error occured, please check if customer information is valid" }, status: 401
    end
  end


  private
  
  def subscription_params
    params.permit(:title, :price, :status, :frequency, :customer_id, :tea_id)
  end
end
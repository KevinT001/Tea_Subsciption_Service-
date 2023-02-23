class Api::v1::SubscriptionsController < ApplicationController 

  def index 
    @customer = Customer.find(params[:id])
    binding.pry
  end
end
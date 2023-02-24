require 'rails_helper'

RSpec.describe 'Subscription patch' do 
  describe 'updating an attribute' do 
    it 'can update status of subscription' do 
  
      customer = create(:customer)
      tea = create(:tea)
      subscription = Subscription.create!(title: "Presidential Roast", price: 10, status: "Active", frequency: 1 , customer_id: customer.id, tea_id: tea.id)

      updated_status_param = {
                                subscription_id: subscription.id,
                                status: "Inactive"
                                
                              }
      headers = { 'CONTENT_TYPE' => 'application/json' }                        
      patch "/api/v1/customers/#{customer.id}/subscriptions/#{subscription.id}", headers: headers, params: JSON.generate(updated_status_param)

      parsed_response = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
 
      expect(subscription.status).to eq("Inactive")
      
    end 
  end
end
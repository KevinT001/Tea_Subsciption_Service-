require 'rails_helper'

RSpec.describe 'Subscriptions Post endpoint' do 
  describe 'customer can add a new tea subscription ' do 
    it 'Will respond with a success message upon saved subscription' do 
      customer = create(:customer)
      tea = create(:tea)
      subscription_params = {"title": "Teaze me ",
                              "price": 20,
                              "status": "Active", 
                              "frequency": 4,
                              "tea_id": tea.id,
                              "customer_id": customer.id
                            }
      
      expect(customer.subscriptions.count).to eq(0)
      post "/api/v1/customers/#{customer.id}/subscriptions", params: subscription_params
      expect(customer.subscriptions.count).to eq(1)
      parsed_response = JSON.parse(response.body, symbolize_names: true)
      expect(response).to have_http_status(200)
      expect(response).to be_successful   
     end
  end
end
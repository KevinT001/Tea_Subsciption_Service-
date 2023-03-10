require 'rails_helper'

RSpec.describe 'Subscriptions Post endpoint' do 
  describe 'customer can add a new tea subscription ' do 
    it 'Will respond with a success message upon saved subscription' do 
      customer = create(:customer)
      tea = create(:tea)
      tea_2 = create(:tea)
      subscription_params = {title: "Teaze me ",
                              price: 20.00,
                              status: "Active", 
                              frequency: 1,
                              tea_id: tea.id,
                              customer_id: customer.id
                            }
      headers = { 'CONTENT_TYPE' => 'application/json' }  
      expect(customer.subscriptions.count).to eq(0)
      post "/api/v1/customers/#{customer.id}/subscriptions", headers: headers, params: JSON.generate(subscription_params)
      expect(customer.subscriptions.count).to eq(1)
      parsed_response = JSON.parse(response.body, symbolize_names: true)
      expect(response).to have_http_status(200)
      expect(response).to be_successful   


      subscription_params_2 = {"title": "Tea-ch me ",
                        price: 10.00,
                        status: "Active", 
                        frequency: 1,
                        tea_id: tea_2.id,
                        customer_id: customer.id
                      }
      headers = { 'CONTENT_TYPE' => 'application/json' }  
      post "/api/v1/customers/#{customer.id}/subscriptions", headers: headers, params: JSON.generate(subscription_params_2)
      expect(customer.subscriptions.count).to eq(2)
     end
  end
end
require 'rails_helper'

RSpec.describe 'all subscriptions endpoint' do 
  describe 'Happy Paths' do 
    describe 'it can return all subscriptions for a given user' do 
      it 'will show subscriptions that are both active and inactive' do 
        customer = create(:customer)
        customer_2 = create(:customer)
        tea_1 = create(:tea)
        tea_2 = create(:tea)
        tea_3 = create(:tea)
        subscription_1 = create(:subscription, customer_id: customer.id, tea_id: tea_1.id)
        subscription_2 = create(:subscription, customer_id: customer.id, tea_id: tea_2.id)
        subscription_3 = create(:subscription, customer_id: customer.id, tea_id: tea_3.id)

        get "/api/v1/customers/#{customer.id}/subscriptions"

        expect(response).to be_successful
        expect(response).to have_http_status(200)

        parsed_response = JSON.parse(response.body, symbolize_names: true)

        expect(parsed_response).to be_a Hash
        expect(parsed_response).to have_key(:data)
      end
    end
  end
end 
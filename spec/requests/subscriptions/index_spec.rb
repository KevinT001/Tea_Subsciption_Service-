require 'rails_helper'

RSpec.describe 'all subscriptions endpoint' do 
  describe 'Happy Paths' do 
    describe 'it can return all subscriptions for a given user' do 
      it 'will show subscriptions that are both active and inactive' do 
        customer = create(:customer)
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
        expect(parsed_response[:data][0][:id]).to be_a String
        expect(parsed_response[:data][0][:type]).to eq('subscription')
        expect(parsed_response[:data][0][:attributes]).to be_a Hash
        expect(parsed_response[:data][0][:attributes][:title]).to eq("#{subscription_1.title}")
        expect(parsed_response[:data][0][:attributes][:status]).to eq("#{subscription_1.status}")
        expect(parsed_response[:data][0][:attributes][:price]).to eq(subscription_1.price)
        expect(parsed_response[:data][0][:attributes][:frequency]).to eq(subscription_1.frequency)
        expect(parsed_response[:data][0][:attributes][:tea_id]).to eq(tea_1.id)
        expect(parsed_response[:data][0][:attributes][:customer_id]).to eq(customer.id)
      end
    end
  end

  describe 'Sad Path' do 
    it 'returns an returns empty data array if no subscriptions are present for a customer' do 
        customer = create(:customer)
        tea_1 = create(:tea)
        tea_2 = create(:tea)
        tea_3 = create(:tea)

        get "/api/v1/customers/#{customer.id}/subscriptions"

        parsed_response = JSON.parse(response.body, symbolize_names: true )

        expect(response).to be_successful 
        expect(parsed_response).to eq("data":[])
    end
  end
end 
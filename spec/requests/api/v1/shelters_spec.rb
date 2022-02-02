# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'api/v1/shelters', type: :request do
  let(:status) { response.status }
  let(:body) { JSON.parse(response.body, symbolize_names: true) }

  describe 'GET api/v1/shelters' do
    context 'when successful' do
      it 'returns all shelter data' do
        create_list(:shelter, 3)

        get '/api/v1/shelters'

        expect(status).to eq(200)
        expect(body).to be_a(Array)
        expect(body.count).to eq(3)
        expect(body.first).to be_a(Hash)
      end
    end
  end
end

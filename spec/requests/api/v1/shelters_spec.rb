# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'api/v1/shelters', type: :request do
  let(:status) { response.status }
  let(:body) { JSON.parse(response.body, symbolize_names: true) }

  # GET /shelters
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

  # GET /shelters/1
  describe 'GET api/v1/shelters/:id' do
    context 'when successful' do
      it 'returns all shelter data' do
        shelter = create(:shelter)

        get "/api/v1/shelters/#{shelter.id}"

        expect(status).to eq(200)
        expect(body).to be_a(Hash)
      end
    end
  end

  # POST /shelters
  describe 'POST api/v1/shelters' do
    context 'when successful' do
      it 'creates a new shelter' do
        shelter = {
          shelter: {
            name: 'Awesome Shelter',
            city: 'Houston',
            state: 'Texas',
            foster_program: true,
            rank: 10
          }
        }

        post '/api/v1/shelters', params: shelter

        expect(status).to eq(201)
        expect(body).to be_a(Hash)
      end
    end

    context 'when missing required params' do
      it 'returns an error' do
        shelter = {
          shelter: {
            name: '',
            city: '',
            state: '',
            foster_program: true,
            rank: 10
          }
        }

        post '/api/v1/shelters', params: shelter

        expect(status).to eq(422)
        expect(body).to be_a(Hash)
      end
    end
  end
end

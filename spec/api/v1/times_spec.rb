# frozen_string_literal: true

RSpec.describe 'Api::V1::Times' do
  describe 'GET /api/v1/times' do
    it 'Find time from diferent city' do
      book_params = { city: 'Kyiv,New York' }

      get('/api/v1/times', params: book_params)
      expect(response.parsed_body['New York']).to be_present
      expect(response.parsed_body['Kyiv']).to be_present
      expect(response.parsed_body['UTC']).to be_present
    end

    it 'Find without params' do
      get('/api/v1/times')
      expect(response.parsed_body['UTC']).to be_present
    end

    it 'City is invalid' do
      book_params = { city: 'Tester My data' }

      get('/api/v1/times', params: book_params)
      expect(response.parsed_body['Tester My data']).to be_present
      expect(response.parsed_body['Tester My data']).to eq('Invalid location')
      expect(response.parsed_body['UTC']).to be_present
    end
  end
end

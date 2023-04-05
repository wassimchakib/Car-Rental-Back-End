require 'rails_helper'

describe 'Reservations', type: :request do
  let!(:user1) { create(:user) }
  let!(:user2) { create(:user, name: 'Josh') }
  let!(:car) { create(:car, user: user1) }

  let(:login_response) do
    post '/login', params: { username: 'Peter' }
    JSON.parse(response.body)
  end

  describe 'GET / with empty or invalid JWT token' do
    it 'should return unauthorized status code' do
      headers = {
        Authorization: 'Bearer abc123',
        'Content-Type': 'application/json'
      }

      get('/api/v1/reservations', headers:)
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'GET / with valid JWT token' do
    it 'should return ok status code' do
      headers = {
        Authorization: "Bearer #{login_response['token']}",
        'Content-Type': 'application/json'
      }

      get('/api/v1/reservations', headers:)
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /create with empty or invalid JWT token' do
    it 'should return unauthorized status code' do
      params = {
        car_id: car.id,
        user_id: user1.id,
        city: 'mexico city',
        starting_date: '02-04-2023',
        ending_date: '04-04-2023'
      }

      headers = {
        Authorization: 'Bearer abc123',
        'Content-Type': 'application/json'
      }

      # headers are missing
      post '/api/v1/reservations', params: JSON.dump(params)
      expect(response).to have_http_status(:unauthorized)

      post('/api/v1/reservations', params: JSON.dump(params), headers:)
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'POST /create with invalid parameters' do
    it 'should return bad request status code' do
      # car_id is missing from params
      params = {
        user_id: user1.id,
        city: 'mexico city',
        starting_date: '02-04-2023',
        ending_date: '04-04-2023'
      }

      headers = {
        Authorization: "Bearer #{login_response['token']}",
        'Content-Type': 'application/json'
      }

      post('/api/v1/reservations', params: JSON.dump(params), headers:)
      expect(response).to have_http_status(:bad_request)
    end
  end

  describe 'POST /create with valid parameters' do
    it 'should return created status code' do
      params = {
        car_id: car.id,
        user_id: user1.id,
        city: 'mexico city',
        starting_date: '02-04-2023',
        ending_date: '04-04-2023'
      }

      headers = {
        Authorization: "Bearer #{login_response['token']}",
        'Content-Type': 'application/json'
      }

      post('/api/v1/reservations', params: JSON.dump(params), headers:)
      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /destroy with empty or invalid JWT token' do
    it 'should return unauthorized status code' do
      headers = {
        Authorization: 'Bearer abc123'
      }

      # headers are missing
      delete '/api/v1/reservations/1'
      expect(response).to have_http_status(:unauthorized)

      delete('/api/v1/reservations/1', headers:)
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'DELETE /destroy with invalid id parameter' do
    it 'should return not found status code' do
      headers = {
        Authorization: "Bearer #{login_response['token']}"
      }

      # id is not a number
      delete('/api/v1/reservations/dsfsdgsdg', headers:)
      expect(response).to have_http_status(:not_found)
    end
  end

  describe 'DELETE /destroy with valid id parameter' do
    let!(:reservation) do
      Reservation.create(
        city: 'Walter-Rathenau-Straße 1-13',
        starting_date: '07-04-2023',
        ending_date: '12-04-2023',
        user_id: user2.id,
        car_id: car.id
      )
    end

    it 'should return accepted status code' do
      headers = {
        Authorization: "Bearer #{login_response['token']}"
      }

      delete("/api/v1/reservations/#{reservation.id}", headers:)
      expect(response).to have_http_status(:accepted)
    end
  end
end

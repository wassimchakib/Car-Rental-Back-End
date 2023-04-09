require 'rails_helper'

describe 'Cars', type: :request do
  let!(:user1) { create(:user) }
  let!(:user2) { create(:user, name: 'Josh') }
  let!(:car) { create(:car, user: user1) }

  let(:login_response) do
    post '/login', params: { username: 'Peter' }
    JSON.parse(response.body)
  end

  # GET api/v1/cars
  describe 'GET / with empty or invalid JWT token' do
    it 'should return unauthorized status code' do
      headers = {
        Authorization: 'Bearer abc123',
        'Content-Type': 'application/json'
      }

      get('/api/v1/cars', headers:)
      expect(response).to have_http_status(:unauthorized)
    end
  end

  # GET api/v1/cars
  describe 'GET / with valid JWT token' do
    it 'should return ok status code' do
      headers = {
        Authorization: "Bearer #{login_response['token']}",
        'Content-Type': 'application/json'
      }

      get('/api/v1/cars', headers:)
      expect(response).to have_http_status(:ok)
    end
  end

  # POST api/v1/cars
  describe 'POST /create with empty or invalid JWT token' do
    it 'should return unauthorized status code' do
      params = {
        name: 'MERCEDES BENZ G CLASS',
        description: 'MERCEDES G63 AMG - SERIES 21: S21-02',
        color: 'White',
        year: '2021',
        price: '210',
        type: 'Sport',
        images:
        [
          'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-611-1047x698.jpg',
          'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-602-1047x698.jpg',
          'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-613-1047x698.jpg'
        ]
      }

      headers = {
        Authorization: 'Bearer abc123',
        'Content-Type': 'application/json'
      }

      # headers are missing
      post '/api/v1/cars', params: JSON.dump(params)
      expect(response).to have_http_status(:unauthorized)

      post('/api/v1/cars', params: JSON.dump(params), headers:)
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'POST /create with invalid parameters' do
    it 'should return bad request status code' do
      # name is missing from params
      params = {
        description: 'MERCEDES G63 AMG - SERIES 21: S21-02',
        color: 'White',
        year: '2021',
        price: '210',
        type: 'Sport',
        images:
        [
          'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-611-1047x698.jpg',
          'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-602-1047x698.jpg',
          'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-613-1047x698.jpg'
        ]
      }

      headers = {
        Authorization: "Bearer #{login_response['token']}",
        'Content-Type': 'application/json'
      }

      post('/api/v1/cars', params: JSON.dump(params), headers:)
      expect(response).to have_http_status(:bad_request)
    end
  end

  describe 'POST /create with valid parameters' do
    it 'should return created status code' do
      params = {
        name: 'MERCEDES BENZ G CLASS',
        description: 'MERCEDES G63 AMG - SERIES 21: S21-02',
        color: 'White',
        year: '2023',
        price: '212',
        car_type: 'Sport',
        images:
        [
          'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-611-1047x698.jpg',
          'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-602-1047x698.jpg',
          'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-613-1047x698.jpg'
        ]
      }

      headers = {
        Authorization: "Bearer #{login_response['token']}",
        'Content-Type': 'application/json'
      }

      post('/api/v1/cars', params: JSON.dump(params), headers:)
      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /destroy with empty or invalid JWT token' do
    it 'should return unauthorized status code' do
      headers = {
        Authorization: 'Bearer abc123'
      }

      # headers are missing
      delete '/api/v1/cars/1'
      expect(response).to have_http_status(:unauthorized)

      delete('/api/v1/cars/1', headers:)
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'DELETE /destroy with invalid id parameter' do
    it 'should return not found status code' do
      headers = {
        Authorization: "Bearer #{login_response['token']}"
      }

      # id is not a number
      delete('/api/v1/cars/dsfsdgsdg', headers:)
      expect(response).to have_http_status(:not_found)
    end
  end

  describe 'DELETE /destroy with valid id parameter' do
    it 'should return accepted status code' do
      headers = {
        Authorization: "Bearer #{login_response['token']}"
      }

      delete("/api/v1/cars/#{car.id}", headers:)
      expect(response).to have_http_status(:accepted)
    end
  end
end

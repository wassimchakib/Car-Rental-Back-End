require 'swagger_helper'

RSpec.describe 'sessions', type: :request do
  path '/login' do
    post('Create a session aka: Generate token') do
      tags 'Users'
      response(200, 'Username logged in successfully') do
        consumes 'application/json'
        produces 'application/json'
        parameter name: :session, in: :body, schema: {
          type: :object,
          properties: {
            username: { type: :string, default: 'wassim' }
          },
          required: ['username']
        }
        run_test!
      end

      response(401, 'Invalid username') do
        run_test!
      end
    end
  end
end

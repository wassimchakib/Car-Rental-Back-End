require 'swagger_helper'

RSpec.describe 'users', type: :request do
  path '/signup' do
    post('Create a new user') do
      tags 'Users'
      response(200, 'User created successfully') do
        consumes 'application/json'
        produces 'application/json'
        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            username: { type: :string, default: 'wassim' }
          },
          required: ['username']
        }
        run_test!
      end
      response(400, 'Username already exists / blank username') do
        run_test!
      end
    end
  end
end

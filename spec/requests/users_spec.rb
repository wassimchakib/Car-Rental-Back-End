require 'swagger_helper'

RSpec.describe 'users', type: :request do

  path '/signup' do
    post('Create a new user') do
      tags 'Users'
      response(200, 'successful') do
        consumes 'application/json'
        produces 'application/json'
        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            username: { type: :string, default: 'wassim'}
          },
          required: ["username"]
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
require 'swagger_helper'

RSpec.describe 'sessions', type: :request do

  path '/login' do

    post('Create a session aka: Generate token') do
      tags 'Users'
      response(200, 'successful') do
        consumes 'application/json'
        produces 'application/json'
        parameter name: :session, in: :body, schema: {
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
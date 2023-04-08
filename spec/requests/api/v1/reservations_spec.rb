require 'swagger_helper'

RSpec.describe 'api/v1/reservations', type: :request do

  path '/api/v1/reservations' do

    get('List all reservations for the current user') do
      tags 'Reservations'
      response(200, 'successful') do

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

    post('Add a new reservation') do
      tags 'Reservations'
      response(200, 'successful') do
        consumes 'application/json'
        produces 'application/json'
        parameter name: :reservation, in: :body, schema: {
          type: :object,
          properties: {
            city: { type: :string, default: 'Mexico City'},
            starting_date: { type: :string, default: '07-04-2023'},
            ending_date: { type: :string, default: '12-04-2023'},
            car_id: { type: :number, default: '1'}
          },
          required: ["city", "starting_date", "ending_date", "car_id"]
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

  path '/api/v1/reservations/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    delete('Delete specific reservation by {id}') do
      tags 'Reservations'
      response(200, 'successful') do
        let(:id) { '123' }

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
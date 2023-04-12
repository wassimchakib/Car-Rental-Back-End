require 'swagger_helper'

RSpec.describe 'api/v1/reservations', type: :request do
  reservation_properties = {
    city: { type: :string, default: 'Mexico City' },
    starting_date: { type: :string, default: '07-04-2023' },
    ending_date: { type: :string, default: '12-04-2023' },
    car_id: { type: :number, default: '1' }
  }
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
      response(201, 'Reservation created successfully') do
        consumes 'application/json'
        produces 'application/json'
        parameter name: :reservation, in: :body, schema: {
          type: :object,
          properties: reservation_properties,
          required: %w[city starting_date ending_date car_id]
        }
        run_test!
      end
      response(400, 'Reservation not added due to the broken data') do
        run_test!
      end
    end
  end

  path '/api/v1/reservations/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    delete('Delete specific reservation by {id}') do
      tags 'Reservations'
      response(202, 'Reservation deleted successfully') do
        let(:id) { '123' }
        run_test!
      end
      response(404, 'Reservation not found') do
      end
    end
  end
end

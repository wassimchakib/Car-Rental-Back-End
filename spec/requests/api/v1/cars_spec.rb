require 'swagger_helper'

RSpec.describe 'api/v1/cars', type: :request do
  car_properties = {
    name: { type: :string, default: 'McLaren' },
    description: { type: :text, default: 'This is the description of McLaren' },
    color: { type: :string, default: 'Green' },
    price: { type: :number, default: '25000' },
    car_type: { type: :string, default: 'Sport' },
    year: { type: :string, default: '2015' },
    images: { type: :array, default: [
      'https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcnN8ZW58MHx8MHx8&w=1000&q=80',
      'https://mclaren.scene7.com/is/image/mclaren/DSC00052_6:crop-1x1?wid=1200&hei=1200'
    ] }
  }

  path '/api/v1/cars' do
    get('List of cars') do
      tags 'Cars'
      response(200, 'successful') do
        run_test!
      end
    end
    post('Create A Car') do
      tags 'Cars'
      response(201, 'Created Car successfully') do
        consumes 'application/json'
        produces 'application/json'
        parameter name: :car, in: :body, schema: {
          type: :object,
          properties: car_properties,
          required: %w[name description price type year]
        }
        run_test!
      end

      response(400, 'Operation not successful because of missing arguments or broken data') do
        run_test!
      end
    end
  end

  path '/api/v1/cars/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('Show Specific Car using {id}') do
      tags 'Cars'
      response(200, 'successful') do
        let(:id) { '123' }
        run_test!
      end
      response(400, 'Car not found') do
        run_test!
      end
    end

    delete('Delete a car by {id}') do
      tags 'Cars'
      response(202, 'Deleted Car successfully') do
        let(:id) { '123' }
        run_test!
      end

      response(404, 'Car not found') do
        run_test!
      end
    end
  end
end

require 'swagger_helper'

describe 'Message API' do
  path '/api/v1/greeting' do
    get 'Retrieves a message' do
      tags 'Message'
      produces 'application/json'
      response '200', 'Message found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 text: { type: :string },
                 created_at: { type: :string },
                 updated_at: { type: :string }
               },
               required: %w[id text created_at updated_at]

        run_test!
      end
    end
  end
end

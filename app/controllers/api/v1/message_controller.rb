class Api::V1::MessageController < ApplicationController
  def index
    message = Message.order('Random()').first
    if message
      render json: message
    else
      render json: { message: 'There is no message' }
    end
  end
end

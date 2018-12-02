class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_invalid_error
  
  def record_invalid_error(exception)
    exception = [exception.message]
    render json: { response: exception, status: 404 }.to_json, status: 404
  end
end

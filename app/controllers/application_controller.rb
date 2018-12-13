class ApplicationController < ActionController::API
  include OpenApi::DSL

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_error
  rescue_from BadRequestError, with: :bad_request_error
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_error

  private
  def bad_request_error(exception)
    render json: { response: JSON.parse(exception.message), status: 400 }.to_json, status: 400
  end

  def record_invalid_error(exception)
    exception = [exception.message]
    render json: { response: exception, status: 400 }.to_json, status: 400
  end

  def record_not_found_error(exception)
    exception = [exception.message]
    render json: { response: exception, status: 404 }.to_json, status: 404
  end
end

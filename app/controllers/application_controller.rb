class ApplicationController < ActionController::Base
  protect_from_forgery

  USER_ID, PASSWORD = 'coding', 'table'

  private

  def authenticate
    authenticate_or_request_with_http_basic do |id, password|
      id == USER_ID && password == PASSWORD
    end
  end

end

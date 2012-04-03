class ApplicationController < ActionController::Base
	USERS = { "admin" => "secret" }

  protect_from_forgery

  private
  def authenticate
		authenticate_or_request_with_http_digest do |username|
			USERS[username]
		end
  end
end

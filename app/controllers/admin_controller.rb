class AdminController < InheritedResources::Base
  before_filter :authenticate

  def authenticate
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
        username == "sayo" && password == "password"
      end 
    end
  end
end

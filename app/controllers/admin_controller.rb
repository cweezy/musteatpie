class AdminController < ApplicationController
  http_basic_authenticate_with :name => "sayo", :password => "secret"
end

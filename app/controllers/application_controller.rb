class ApplicationController < ActionController::API
  def index
    render plain: 'Welcome to the Everyday Heroes API'
  end
end

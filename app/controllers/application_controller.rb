class ApplicationController < ActionController::API
  before_action :authenticate

  private
  def authenticate
    unless correct_app_secret?
      render nothing: true, status: 404
    end
  end

  def correct_app_secret?
    request.headers['Api-Key'] == api_key
  end

  def api_key
    Rails.application.credentials.api_key!
  end

end

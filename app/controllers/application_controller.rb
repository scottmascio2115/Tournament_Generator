class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  prepend_before_filter :get_auth_token
  before_filter :authenticate_user_from_token!

  def after_sign_in_path_for(resource)
    auth_redirect_path
  end

  def after_sign_up_path_for(resource)
    auth_redirect_path
  end

  def ember_redirect_with_auth_token
    current_user.ensure_auth_token!
    view_context.add_query_param(tournymadness_url, "authentication_token", current_user.authentication_token, "id", current_user.id)
  end

  def get_auth_token
    if auth_token = params[:authentication_token].blank? && request.headers["Authorization"]
      # we're overloading ActiveResource's Basic HTTP authentication here, so we need to
      # do some unpacking of the auth token and re-save it as a parameter.
      params[:authentication_token] = auth_token
    end
  end

  def authenticate_user_from_token!
    user_token = params[:authentication_token].presence
    user       = user_token && User.find_by(:authentication_token => user_token.to_s)

    if user
      # Notice we are passing store false, so the user is not
      # actually stored in the session and a token is needed
      # for every request. If you want the token to work as a
      # sign in token, you can simply remove store: false.
      sign_in user, store: false
    end
  end
end

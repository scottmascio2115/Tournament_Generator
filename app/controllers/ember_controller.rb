class EmberController < ApplicationController
  before_filter :authenticate_user!
  layout "ember"

  def start

  end

  def auth_redirect
    redirect_to ember_redirect_with_auth_token
  end
end

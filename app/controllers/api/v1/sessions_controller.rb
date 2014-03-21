class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_for_database_authentication(email: params[:session][:email])

    if @user && @user.valid_password?(params[:session][:password])
      sign_in @user
      render json: {
        session: { id: @user.id, email: @user.email }
      }, status: :created
    else
      render json: {
        errors: {
          email: "Invalid Login"
        }
      }, status: :unprocessable_entity
    end
  end

  def destroy
    sign_out @user
    render json: {}, status: :accepted
  end

  def show
    @user = User.find(params[:id])
  end
end

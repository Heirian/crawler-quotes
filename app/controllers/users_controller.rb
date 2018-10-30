class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    return unless user.save

    render json: { status: 200, msg: 'User was created.' }
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

# frozen_string_literal: true

# Application main page
class HomeController < ApplicationController
  before_action :authenticate_user, only: %i[auth]

  def auth
    render json: {
      status: 200,
      msg: "You are currently Logged-in as #{current_user.email}"
    }
  end
end

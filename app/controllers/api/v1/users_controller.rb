class Api::V1::UsersController < ApplicationController

  def index

    render json: User.all
    #code
  end
end

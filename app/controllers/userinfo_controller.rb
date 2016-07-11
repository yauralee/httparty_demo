class UserinfoController < ApplicationController
  def show
    render json: {userinfo: 'userinfo'}
    # render json: @result.body
  end
end

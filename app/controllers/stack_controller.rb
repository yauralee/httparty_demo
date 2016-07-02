$LOAD_PATH << '.'
require 'stack_uri.rb'

class StackController < ApplicationController
  def show
    stack_exchange = StackUri.new("stackoverflow", 1)
    @result_questions = stack_exchange.questions
    @result_users =  stack_exchange.users
    render json: @result_questions
    # render json: @result_users
  end
end

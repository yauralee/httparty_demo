require 'git_uri.rb'
class GitController < ApplicationController
  def show
    git_info = GitUri.new
    @result = git_info.location
    p "========="
    # p @result
    p @result.class
    render json: @result.body
  end
end

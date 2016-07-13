require 'git_uri.rb'
class GitController < ApplicationController
  def show
    git_info = GitUri.new
    @result = git_info.location
    render json: @result.body
  end
end

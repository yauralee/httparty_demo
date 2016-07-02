$LOAD_PATH << '.'
require 'weather_uri.rb'

class WeatherController < ApplicationController
  def show
    weather_info = WeatherUri.new
    @result = weather_info.location
    p "========="
    p @result
    p @result.class
    render json: @result.body
  end
end

$LOAD_PATH << '.'
require 'weather_uri.rb'

class WeatherController < ApplicationController
  def show
    weather_info = WeatherUri.new
    @result = weather_info.location
    render json: @result.body
  end
end

require 'net/http'

class AuthenticationController < ApplicationController
  # include AuthenticationHelper

  def show
    # response = request_access('3aab7372268ef49a3d5b')
    # p response
    # render html: response.body
    # render json: response.header
    # redirect_to


    # response_json = JSON.parse(response.body)
    # p response_json['code']

    # HTTParty.get("https://github.com/login/oauth/authorize", @options)


    response = HTTParty.get("https://github.com/login/oauth/authorize?client_id=3aab7372268ef49a3d5b")
    redirect_to "https://github.com/login/oauth/authorize?client_id=3aab7372268ef49a3d5b"

    # render json: response.header

    # response = Net::HTTP.get_response(URI('https://github.com/login/oauth/authorize?client_id=3aab7372268ef49a3d5b'))
    # redirect_to 'https://github.com/login/oauth/authorize?client_id=3aab7372268ef49a3d5b'
    # redirect_params = Rack::Utils.parse_query(URI.parse(response['location']).query)
    # render json: redirect_params
    # if response.is_a? Net::HTTPRedirection
    #   redirect_params = Rack::Utils.parse_query(URI.parse(response['location']).query)
    #   puts "============="
    #   puts redirect_params
    #   puts "=========="
    # elsif redirected_uri.is_a? URI::Generic
    #   redirected_uri = uri.merge(redirected_uri)
    #   puts "**************"
    #   puts resolve(redirected_uri).to_s
    #   puts "**************"
    # end
  end
end

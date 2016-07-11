module AuthenticationHelper
  include HTTParty
  def request_access(client_id)
    @options = {client_id: client_id}
    HTTParty.get("https://github.com/login/oauth/authorize", @options)
  end
end

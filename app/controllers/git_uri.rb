class GitUri
  include HTTParty

  base_uri 'api.github.com'

  def initialize
    @options = { query: {access_token: '9e8f621a2fa12ac5fa36fd4f753c0210a0f68b01'} }
  end

  def location
    self.class.get("/users/whatever", @options)
  end

end
class GitUri
  include HTTParty
  base_uri 'github.com'

  def initialize
  end

  def location
    self.class.get("/jnunemaker/httparty", {})
  end
end
class WeatherUri
  include HTTParty
  base_uri 'tianqi.moji.com'

  def initialize
  end

  def location
    self.class.get("/weather/china/shanghai/shanghai", {})
  end

end
class WeatherUri
  include HTTParty
  base_uri 'v.juhe.cn'

  def initialize
    @options = { query: {cityname: "西安", dtype: 'json', format: 2, key: '7bed38a062aa8bbe445f741146736cc3'} }
  end

  def location
    self.class.get("/weather/index", @options)
  end

end


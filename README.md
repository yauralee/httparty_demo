# use HTTParty to get info
### Get stackoverflow information

* follow the example in https://github.com/jnunemaker/httparty
* generate stack controller in command line
* create StackUri class to define the uri and HTTParty request manually
* set up base uri and define show action in stack controller, send request and render result in show action
* define the corresponding route in routes.rb
* rails server
* access to http://api.stackexchange.com/2.2/questions?site=stackoverflow and get the information

### Get Weather information

* generate weather controller
* set up route
* create WeatherUri class, define uri and HTTParty request
* include HTTParty and set up base uri in controller
* send request and render result in defined action--show
* rails server
* access to http://tianqi.moji.com/weather/china/shanghai/shanghai

## Get GitHub information

* generate git controller
* set up route
* create GitUri class, define uri and HTTParty request
* include HTTParty and set up base uri in controller
* send request and render result in show action
* rails server
* access to https://github.com/jnunemaker/httparty

**_问题：_**

访问过程中出现 “getaddrinfo: nodename nor servname provided, or not known”问题时，使用`ps aux |grep rails` 显示所有包含rails的进程，执行$ kill -9 PID关闭进程，`rails server`重启server.

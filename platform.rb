require 'open-uri'
require 'rubygems'
require 'sinatra/base'
require 'erb'
require 'sinatra/synchrony'

class Platform < Sinatra::Base
  register Sinatra::Synchrony
  url = "http://download.finance.yahoo.com/d/quotes.csv?e=.csv&f=sl1d1t1&s=USDCNY=x"

  get "/" do
    #open(url){ |f| return f.read}
    params[:echostr]
  end

  post "/" do
    puts params[:xml]
  end

end

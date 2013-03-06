class UserfeedsController < ApplicationController

  require 'net/http'
  require 'uri'

  def index 
   # Get the Home page
  end

  def getUserEvents
   
   @username = params[:username]
   uri =  URI.parse('https://api.github.com/users/'+@username+'/events')
   http = Net::HTTP.new(uri.host, uri.port)
   request = Net::HTTP::Get.new(uri.request_uri)
   http.use_ssl = true
   http.verify_mode = OpenSSL::SSL::VERIFY_NONE
   response = http.request(request)

   parseJSONFeed response.body

  end

  def parseJSONFeed(response) 
   @parseFeed = ActiveSupport::JSON.decode(response)
  end
end

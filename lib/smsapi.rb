require 'smsapi/version'
require 'net/http'

module SMSAPI

  class Client
    def initialize(username, password)
      @username = username
      @password = password
    end

    def send!(to, message)
      uri = URI('https://api.smsapi.pl/sms.do')
      Net::HTTP.post_form(uri, {
        "username" => @username,
        "password" => @password,
        "to" => to,
        # "fast" => "1",
        "message" => message
      })
    end
  end

end

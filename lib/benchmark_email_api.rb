# require "benchmark_email_api/version"
require "net/http"
require "net/https"
require "openssl"
require "xmlrpc/client"
require "uri"

module BenchmarkEmailApi
  class Client
    def initialize(username,password,api_url)
      uri = URI(api_url)
      @server = XMLRPC::Client.new2(uri)
      @server.http_header_extra = {'accept-encoding' => 'identity'}
      $ok, result = @server.call2('login', username, password)
      if $ok
        @token = result
      else
        puts "Error Code: #{result.faultCode}"
        puts "Error Description: #{result.faultString}"
      end
     end
     def method_missing(api_method, *args)
      $ok, result = @server.call2(api_method.to_s, @token, *args)
      return result
     end
  end
end

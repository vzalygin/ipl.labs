require 'net/http'
require 'nokogiri'

class MainController < ApplicationController
    include ReverseProxy::Controller
    
    def initialize
        @xslt = Nokogiri::XSLT(File.read('transformer.xslt'))
    end 
    
    def index
        reverse_proxy ("http://localhost:3001/") do |config|
            config.on_success do |code, response|
                if request.format == "application/xml"
                    response
                else
                    res = @xslt.transform(Nokogiri::XML(response.body))
                    return render html: res
                end
            end
        end
    end
end

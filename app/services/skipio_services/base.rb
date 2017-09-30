require 'skipio'
module SkipioServices
  class Base
    def initialize(options = {})
      @options = options
    end

    def service
      Skipio.new({ token: Rails.application.secrets.skipio_api, params: @options })
    end
  end
end

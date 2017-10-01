require 'skipio'
module SkipioServices
  class Base
    def service
      Skipio.new({ token: Rails.application.secrets.skipio_api, params: @options })
    end
  end
end

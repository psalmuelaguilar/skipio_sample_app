module SkipioServices
  class Message < Base
    def send_message
      service.send_message
    end
    # options = { recipients: 'add comma separated ids here', message: 'add message here' }
  end
end

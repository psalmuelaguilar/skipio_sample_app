module SkipioServices
  class Message < Base
    def send_message(options)
      params = build_message_params(options)
      service.send_message(params) # Move to Background jobs
    end

    private
    def build_message_params(options)
      { recipients: options[:recipients], message: options[:message] }
    end
  end
end

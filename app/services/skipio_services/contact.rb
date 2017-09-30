module SkipioServices
  class Contact < Base
    def list
      service.contact_list
    end
  end
end

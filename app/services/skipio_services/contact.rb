module SkipioServices
  class Contact < Base
    def list
      service.contact_list
    end

    def find_contact(id)
      service.find_contact(id)
    end
  end
end

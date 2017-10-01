class ContactsController < ApplicationController
  before_action :set_contacts, only: %i(show edit update)
  before_action :authenticate_user!, only: %i(edit update)

  def index
    @contacts = service.list
  end

  def show

  end

  def edit; end

  def send_message
    binding.pry
  end

  private

  def set_contacts
    @contact = service.find_contact(params[:id])
  end

  def service
    service = SkipioServices::Contact.new
  end
end

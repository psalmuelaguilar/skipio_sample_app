class ContactsController < ApplicationController
  before_action :set_contacts, only: %i(show edit update send_message)
  before_action :authenticate_user!, only: %i(edit update)

  def index
    @contacts = service.list
  end

  def show

  end

  def edit; end

  def send_message
    response = SkipioServices::Message.new.send_message(message_params)
  end

  private

  def set_contacts
    @contact = service.find_contact(params[:id])['data']
  end

  def service
    service = SkipioServices::Contact.new
  end

  def message_params
    { recipients: @contact['message_list_id'], message: params[:message]}
  end
end

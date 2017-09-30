class ContactsController < ApplicationController
  before_action :set_contacts, only: %i(show edit update)
  before_action :authenticate_user!, only: %i(edit update)

  def index
    @contacts = service.new({}).list
  end

  def show
    # TODO: Must update gem as wel
    # @contact = service.new({}).find
  end

  def edit; end

  private

  def set_contacts
    # TODO
    @contact = service.find
  end

  def service
    service = SkipioServices::Contact
  end
end

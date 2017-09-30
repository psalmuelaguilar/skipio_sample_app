class ContactsController < ApplicationController
  before_action :set_contacts, only: %i(show edit update)
  before_action :authenticate_user!, only: %i(edit update)

  def index
    @jurisprudences = service.search
  end

  def show; end

  def edit; end

  def update
    respond_to do |format|
      if @jurisprudence.update(jurisprudence_params)
        format.html { redirect_to @jurisprudence, notice: 'Jurisprudence was successfully updated.' }
        format.json { render :show, status: :ok, location: @jurisprudence }
      else
        format.html { render :edit }
        format.json { render json: @jurisprudence.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_jurisprudence
    @jurisprudence = Jurisprudence.find params[:id]
  end

  def jurisprudence_params
    params[:jurisprudence][:number] = params[:jurisprudence][:number].split(',')
    params.require(:jurisprudence).permit(:case_number, :title, :case_date, :content, number: [])
  end

  def service
    JurisprudenceService::QueryBuilder.new(params)
  end
end

class ContactsController < ApplicationController
  def index
    @contact = ContactElement.all
    @main = ContactMain.first
  end
  def mail
    FeedbackMailer.mail(params[:feedback]).deliver
    redirect_to 'contacts#index'
  end
end

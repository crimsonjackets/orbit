class ContactsController < ApplicationController
  def index
    @contact = ContactElement.all
    @main = ContactMain.first
  end
  def feedback_mail
    FeedbackMailer.feedback_mail(params[:feedback]).deliver
    redirect_to '/contacts'
  end
end

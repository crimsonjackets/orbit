class FeedbackMailer < ActionMailer::Base
  default from: "feedback@orbita-spb.ru"
  def mail(feedback)
    @feedback = feedback
    mail to: 'tiburon1995@gmail.com', subject: 'Сообщение с сайта' #TODO actual mailto address
  end
end

class FeedbackMailer < ActionMailer::Base
  default from: "no-reply@orbita-spb.ru"
  def feedback_mail(feedback)
    @feedback = feedback
    mail to: 'tiburon19@yandex.ru', subject: 'Сообщение с сайта'
  end
end

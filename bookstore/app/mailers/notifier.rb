class Notifier < ActionMailer::Base

  include SendGrid

  sendgrid_category :use_subject_lines
  sendgrid_enable   :ganalytics, :opentrack

  default from: Settings.mailer.from_default

  def subscribe(subscriber)
    sendgrid_category "Welcome"
    mail to: subscriber.email, subject: "Welcome bookstore"
  end

end
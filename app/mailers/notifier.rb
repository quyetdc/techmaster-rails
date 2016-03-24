class Notifier < ActionMailer::Base

  include SendGrid

  sendgrid_category :use_subject_lines
  sendgrid_enable   :ganalytics, :opentrack
  sendgrid_unique_args :key1 => "value1", :key2 => "value2"
 
  default from: '<colin@bookstore.co>'
  default to: '<colin@bookstore.co>'

  def subscribe(subscriber)
    sendgrid_category "Welcome"
    mail to: subscriber.email, subject: "Welcome bookstore"
  end

end
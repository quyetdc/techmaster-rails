class Notifier < ActionMailer::Base
 
  default from: '<colin@bookstore.co>'
  default to: '<colin@bookstore.co>'

  def subscribe(subscriber)
    mail to: subscriber.email
  end

end
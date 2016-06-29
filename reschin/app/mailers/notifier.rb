# app/mailers/notifier.rb
class Notifier < ActionMailer::Base

  include SendGrid

  default from: 'info@reschin.com'

  def restaurant_notifier(user_mail, restaurant_url)
    sendgrid_category "Welcome #{user_mail}"
    @user_email = user_mail
    @restaurant_url = restaurant_url
    mail(to: user_mail, subject: "We have new Restaurant. Check it now!" )
  end

end

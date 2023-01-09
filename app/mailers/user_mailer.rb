class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.booking.subject
  #
  def booking(object)
    @object = object
    
    mail(to: "#{object.user_email}", 
         subject: 'Booking Confirmation')
  end

  def delete_booking(object)
    @object = object
    
    mail(to: "#{object.user_email}", 
         subject: 'Booking Cancellation')
  end  

end

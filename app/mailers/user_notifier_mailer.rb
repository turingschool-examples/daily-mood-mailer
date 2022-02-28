class UserNotifierMailer < ApplicationMailer
  def send_mood_email(email, thought)
    @email = email
    sleep 5 # this is for demonstration purposes of feeling the pain of a long page load.
    mail( :to => @email,
    :subject => 'Open this message for the mood of the day.' )
  end
end

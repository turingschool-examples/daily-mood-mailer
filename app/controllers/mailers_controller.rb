class MailersController < ApplicationController
  def create
    UserNotifierMailer.send_mood_email(params[:mailers][:email], params[:mailers][:mood]).deliver_now
    flash[:message] = "You did it! Email sent to #{params[:mailers][:email]}"
    redirect_to "/sent"
  end

  def sent
  end
end

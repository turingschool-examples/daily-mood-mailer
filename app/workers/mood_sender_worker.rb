class MoodSenderWorker
  include Sidekiq::Worker

  def perform(email, mood)
    UserNotifierMailer.send_mood_email(email, mood).deliver_now
  end
end

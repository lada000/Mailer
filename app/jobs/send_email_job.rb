class SendEmailJob
  include Sidekiq::Job

  def perform(email)
    UserMailer.welcome_email(OpenStruct.new(email: email)).deliver_now
  end
end
